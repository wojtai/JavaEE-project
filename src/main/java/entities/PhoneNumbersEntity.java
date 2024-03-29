package entities;

import javax.json.bind.annotation.JsonbTransient;
import javax.persistence.*;
import java.io.Serializable;
import java.util.Objects;

@Entity
@Table(name = "phone_numbers", schema = "javaee")
public class PhoneNumbersEntity implements Serializable {
    private int id;
    private byte prim;
    private String value;
    @JsonbTransient
    private PersonalDataEntity personalDataByUserId;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "prim")
    public byte getPrim() {
        return prim;
    }

    public void setPrim(byte prim) {
        this.prim = prim;
    }

    @Basic
    @Column(name = "value")
    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PhoneNumbersEntity that = (PhoneNumbersEntity) o;
        return id == that.id &&
                prim == that.prim &&
                Objects.equals(value, that.value);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, prim, value);
    }

    @ManyToOne
    @JoinColumn(name = "user_id", referencedColumnName = "id", nullable = false)
    public PersonalDataEntity getPersonalDataByUserId() {
        return personalDataByUserId;
    }

    public void setPersonalDataByUserId(PersonalDataEntity personalDataByUserId) {
        this.personalDataByUserId = personalDataByUserId;
    }
}
