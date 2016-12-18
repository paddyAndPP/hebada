package com.hebada.util;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by paddy.luo on 2016/12/18.
 */
public class CustomerDateAndTimeDeserialize extends JsonDeserializer<Date> {
    private static Logger logger = LoggerFactory.getLogger(CustomerDateAndTimeDeserialize.class);
    private SimpleDateFormat dateFormat = new SimpleDateFormat(
            "yyyy-MM-dd HH:mm:ss");
    @Override
    public Date deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        String str = jsonParser.getText().trim();
        try {
            return dateFormat.parse(str);
        } catch (ParseException e) {
            logger.error(e.getMessage());
        }
        return deserializationContext.parseDate(str);
    }
}
