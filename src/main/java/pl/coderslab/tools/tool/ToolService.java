package pl.coderslab.tools.tool;

import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

@Service
public class ToolService {
    private final ToolRepository toolRepository;
    private final ToolDtoMapper toolDtoMapper;

    public ToolService(ToolRepository toolRepository, ToolDtoMapper toolDtoMapper) {
        this.toolRepository = toolRepository;
        this.toolDtoMapper = toolDtoMapper;
    }


    public Iterable<ToolDto> getAllTools() {
        return StreamSupport.stream(toolRepository.findAll().spliterator(), false)
                .map(toolDtoMapper::map)
                .collect(Collectors.toList());
    }

    public Optional<ToolDto> getToolById(Long id) {
        return toolRepository.findById(id)
                .map(toolDtoMapper::map);
    }
}
