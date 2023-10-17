package dao.master;

import data.dto.RestMasterStatusDTO;
import data.entity.RestMaster;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.ArrayList;

@Mapper
public interface RestMasterDao {
    @Insert("insert into restmaster(masterno, id, tel) values(#{masterNo}, #{id}, #{tel})")
    void insert(RestMaster master);

    @Select("select id from restmaster where masterNo = #{no}")
    String selectMasterNo(@Param("no") int no);

    @Select("select seq_restMaster_no.nextval from dual")
    int selectNo();

    @Select("select re.id id, hi.svarnm name, re.status status from restmaster re, highwayrest hi where re.id = hi.svarcd")
    ArrayList<RestMasterStatusDTO> selectStatus();
}
