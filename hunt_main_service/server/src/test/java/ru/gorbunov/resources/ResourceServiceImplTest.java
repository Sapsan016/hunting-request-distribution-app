package ru.gorbunov.resources;


import lombok.RequiredArgsConstructor;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.jdbc.core.JdbcTemplate;
import ru.gorbunov.dto.AddResourceDto;
import ru.gorbunov.exception.ObjectNotFoundException;
import ru.gorbunov.model.Resource;

import javax.persistence.Column;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
//@AutoConfigureTestDatabase()
@RequiredArgsConstructor(onConstructor_ = @Autowired)
class ResourceServiceImplTest {
  //  private final JdbcTemplate jdbcTemplate;

    private final ResourceServiceImpl resourceService;


    private AddResourceDto getResourceDto() {
        return AddResourceDto.builder()
                .region("Region")
                .name("TestResource")
                .start(LocalDate.now().plusDays(1))
                .end(LocalDate.now().plusMonths(3))
                .quote(10)
                .build();
    }

//    @AfterEach
//    void afterEach() {
//        jdbcTemplate.update("DELETE FROM resources");
//        jdbcTemplate.update("ALTER TABLE resources ALTER COLUMN FILM_ID RESTART WITH 1");
//    }

    @Test
    void testSaveAndGetResourceAndDelete() {
        AddResourceDto testResourceDto = getResourceDto();
        Resource savedResource = resourceService.addNewResource(testResourceDto);
        assertEquals(21L, savedResource.getId());
        assertEquals(testResourceDto.getRegion(), savedResource.getRegion());
        assertEquals(testResourceDto.getName(), savedResource.getName());
        resourceService.removeResource(savedResource.getId());
        assertThrows(ObjectNotFoundException.class, () -> resourceService.getResourceById(21L));
    }


//    @Test
//    void testUpdateFilm() {
//        Film film = getFilm();
//        filmDbStorage.add(film);
//        film.setName("XXX");
//        film.setDuration(3333);
//        filmDbStorage.update(film);
//        assertEquals(film, filmDbStorage.get(1));
//    }
//
//    @Test
//    void testContainsIdFilm() {
//        assertFalse(filmDbStorage.containsId(9999),
//                "Фильм с id " + 9999 + " не найден.");
//    }
//
//    @Test
//    void testFindAllFilms() {
//        Film film1 = getFilm();
//        Film film2 = getFilm();
//        film2.setName("Ololololo");
//        filmDbStorage.add(film1);
//        filmDbStorage.add(film2);
//        List<Film> films = List.of(film1, film2);
//        assertEquals(films, filmDbStorage.getFilms());
//    }
//
//
//    @Test
//    void testSaveLikeAndDelete() {
//        userDbStorage.add(getUser("kot@yandex.ru", "login"));
//        userDbStorage.add(getUser("kot2@yandex.ru", "login2"));
//        filmDbStorage.add(getFilm());
//        likesDAO.putLike(1, 1);
//        likesDAO.putLike(1, 2);
//        assertEquals(2, filmDbStorage.get(1).getRate());
//        likesDAO.deleteLike(1, 1);
//        assertEquals(1, filmDbStorage.get(1).getRate());
//    }
//
//    @Test
//    void testSaveLike() {
//        filmDbStorage.add(getFilm());
//        assertThrows(ObjectNotFoundException.class, () -> likesDAO.deleteLike(1, 2),
//                "Пользователь с id=-2 не ставил лайк фильму с id=1");
//    }
//
//    @Test
//    void testFindEmptyPopularFilms() {
//        assertEquals(new ArrayList<>(), filmDbStorage.getPopular(5, null, null));
//    }
//
//    @Test
//    void testFindOnePopularFilm() {
//        userDbStorage.add(getUser("kot@yandex.ru", "login"));
//        userDbStorage.add(getUser("kot2@yandex.ru", "login2"));
//        filmDbStorage.add(getFilm());
//        filmDbStorage.add(getFilm());
//        likesDAO.putLike(1, 1);
//        likesDAO.putLike(1, 2);
//        likesDAO.putLike(2, 2);
//        assertEquals(1, filmDbStorage.getPopular(1, null, null).get(0).getId());
//    }
//
//
//    @Test
//    void testUpdateFilmWithGenre() {
//        Film film = getFilm();
//        filmDbStorage.add(film);
//        film.setGenres(List.of(Genre.builder().id(2).name("Драма").build()));
//        filmDbStorage.update(film);
//        film.setGenres(null);
//        genreDAO.findGenresForFilm(film);
//        assertEquals(List.of(Genre.builder().id(2).name("Драма").build()), film.getGenres());
//    }
//
//    @Test
//    void testFindFilmWithThreeGenres() {
//        Film film = getFilm();
//        List<Genre> genres = List.of(Genre.builder().id(1).name("Комедия").build(),
//                Genre.builder().id(2).name("Драма").build(), Genre.builder().id(3).name("Мультфильм").build());
//        film.setGenres(genres);
//        filmDbStorage.add(film);
//        film.setGenres(null);
//        genreDAO.findGenresForFilm(film);
//        assertEquals(genres, film.getGenres());
//    }
//
//    @Test
//    void testUpdateFilmWithRepeatedGenres() {
//        Film film = getFilm();
//        filmDbStorage.add(film);
//        film.setGenres(List.of(Genre.builder().id(1).name("Комедия").build(),
//                Genre.builder().id(2).name("Драма").build(), Genre.builder().id(1).name("Комедия").build()));
//        filmDbStorage.update(film);
//        film.setGenres(List.of(Genre.builder().id(1).name("Комедия").build(),
//                Genre.builder().id(2).name("Драма").build()));
//        assertEquals(film, filmDbStorage.get(1));
//    }
}