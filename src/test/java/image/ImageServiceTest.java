package image;

import com.hebada.service.ImageService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.web.multipart.MultipartFile;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by paddy.luo on 2016/12/10.
 */
@ContextConfiguration(locations = { "classpath:applicationContext.xml" })
@TransactionConfiguration(transactionManager = "transactionManager", defaultRollback = true)
@RunWith(SpringJUnit4ClassRunner.class)
public class ImageServiceTest {

    @Autowired
    private ImageService imageService;

    @Test
    public void testImageSave() {
        Map<String, MultipartFile> fileMap = new HashMap<>();
        fileMap.put("1", new MockMultipartFile("aa", "12345".getBytes()));
        imageService.uploadFiles(fileMap, "D:/image");

    }
}
