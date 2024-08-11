package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;

/**
 * 余额变更记录
 *
 * @author 
 * @email
 */
@TableName("yuebiangengjil")
public class YuebiangengjilEntity<T> implements Serializable {
    private static final long serialVersionUID = 1L;


	public YuebiangengjilEntity() {

	}

	public YuebiangengjilEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


    /**
     * 主键
     */
    @TableId(type = IdType.AUTO)
    @TableField(value = "id")

    private Integer id;


    /**
     * 用户姓名
     */
    @TableField(value = "yonghu_id")

    private Integer yonghuId;


    /**
     * 原因
     */
    @TableField(value = "yuebiangengjil_name")

    private String yuebiangengjilName;


    /**
     * 涉及数量
     */
    @TableField(value = "yuebiangengjil_number")

    private Double yuebiangengjilNumber;


    /**
     * 类型
     */
    @TableField(value = "jifen_types")

    private Integer jifenTypes;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "insert_time",fill = FieldFill.INSERT)

    private Date insertTime;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "create_time",fill = FieldFill.INSERT)

    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }
    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：用户姓名
	 */
    public Integer getYonghuId() {
        return yonghuId;
    }
    /**
	 * 获取：用户姓名
	 */

    public void setYonghuId(Integer yonghuId) {
        this.yonghuId = yonghuId;
    }
    /**
	 * 设置：原因
	 */
    public String getYuebiangengjilName() {
        return yuebiangengjilName;
    }
    /**
	 * 获取：原因
	 */

    public void setYuebiangengjilName(String yuebiangengjilName) {
        this.yuebiangengjilName = yuebiangengjilName;
    }
    /**
	 * 设置：涉及数量
	 */
    public Double getYuebiangengjilNumber() {
        return yuebiangengjilNumber;
    }
    /**
	 * 获取：涉及数量
	 */

    public void setYuebiangengjilNumber(Double yuebiangengjilNumber) {
        this.yuebiangengjilNumber = yuebiangengjilNumber;
    }
    /**
	 * 设置：类型
	 */
    public Integer getJifenTypes() {
        return jifenTypes;
    }
    /**
	 * 获取：类型
	 */

    public void setJifenTypes(Integer jifenTypes) {
        this.jifenTypes = jifenTypes;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }
    /**
	 * 获取：创建时间
	 */

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }
    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "Yuebiangengjil{" +
            "id=" + id +
            ", yonghuId=" + yonghuId +
            ", yuebiangengjilName=" + yuebiangengjilName +
            ", yuebiangengjilNumber=" + yuebiangengjilNumber +
            ", jifenTypes=" + jifenTypes +
            ", insertTime=" + insertTime +
            ", createTime=" + createTime +
        "}";
    }
}
