package br.edu.ifgoiano.hotel.controller.dto.request.roomDTO;

import br.edu.ifgoiano.hotel.controller.dto.request.CommentOutputDTO;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.List;

@Getter
@AllArgsConstructor
@NoArgsConstructor
@Setter
public class RoomOutputDTO {
    private Long id;
    private String description;
    private BigDecimal price;
    private Boolean available;
    private Integer capacity;
    private Integer floor;
    private String type;
    @JsonManagedReference // Define o lado pai da relação
    private List<CommentOutputDTO> comments;
}