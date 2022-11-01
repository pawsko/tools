package pl.coderslab.tools.category;

import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

@Service
public class CategoryService {
    private final CategoryRepository categoryRepository;
    private final CategoryDtoMapper categoryDtoMapper;

    public CategoryService(CategoryRepository categoryRepository, CategoryDtoMapper categoryDtoMapper) {
        this.categoryRepository = categoryRepository;
        this.categoryDtoMapper = categoryDtoMapper;
    }

    public Iterable<CategoryDto> getAllCategories() {
        return StreamSupport.stream(categoryRepository.findAll().spliterator(), false)
                .map(categoryDtoMapper::map)
                .collect(Collectors.toList());
    }

    public Optional<CategoryDto> getCategoryById(Long id) {
        return categoryRepository.findById(id)
                .map(categoryDtoMapper::map);
    }

    public CategoryDto saveCategory(CategoryDto categoryDto) {
        Category category = categoryDtoMapper.map(categoryDto);
        Category savedCategory = categoryRepository.save(category);
        return categoryDtoMapper.map(savedCategory);
    }

    public Optional<CategoryDto> replaceCategory(Long id, CategoryDto categoryDto) {
        if (!categoryRepository.existsById(id)) {
            return Optional.empty();
        } else {
            categoryDto.setId(id);
            Category categoryToUpdate = categoryDtoMapper.map(categoryDto);
            Category updatedEntity = categoryRepository.save(categoryToUpdate);
            return Optional.of(categoryDtoMapper.map(updatedEntity));
        }
    }
}
