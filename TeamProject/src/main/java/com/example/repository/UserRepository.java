package com.example.repository;

import com.example.domain.MemberDTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserRepository {

    @Autowired
    private DataSource dataSource;

    public MemberDTO findByUserIdAndPassword(String id, String password) throws SQLException {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        MemberDTO member = null;

        try {
            conn = dataSource.getConnection();

            pstmt = conn.prepareStatement("SELECT * FROM member WHERE id=? AND password=?");
            pstmt.setString(1, id);
            pstmt.setString(2, password);

            rs = pstmt.executeQuery();

            if (rs.next()) {
                member = new MemberDTO();
                member.setId(rs.getString("id"));
                member.setPassword(rs.getString("password"));
                member.setName(rs.getString("name"));
                member.setEmail(rs.getString("email"));
            }

            return member;
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                }
            }
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (SQLException e) {
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                }
            }
        }
    }

}
