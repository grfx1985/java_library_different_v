package com.wmusial.dao;

import com.wmusial.model.Rent;
import com.wmusial.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RentRepository extends JpaRepository<Rent, Long> {

    List<Rent> findByUser(User user);

    List<Rent> findByUserOrderByCreatedDateDesc(User user);

    List<Rent> findByUserAndStatusOrderByCreatedDateDesc(User user, Rent.Status status);
}
