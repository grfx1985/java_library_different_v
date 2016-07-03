package com.wmusial.dao;

import com.wmusial.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);

    @Query("SELECT u FROM User u " +
            "LEFT JOIN FETCH u.rents " +
            "WHERE u.email = :email")
    User findByEmailWithRents(@Param("email") String email);
}
