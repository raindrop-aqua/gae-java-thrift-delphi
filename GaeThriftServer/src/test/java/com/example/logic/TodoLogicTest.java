package com.example.logic;

import static com.google.common.truth.Truth.assertThat;
import static org.junit.Assert.fail;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.tools.development.testing.LocalDatastoreServiceTestConfig;
import com.google.appengine.tools.development.testing.LocalServiceTestHelper;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

@RunWith(JUnit4.class)
public class TodoLogicTest {

    // テスト用の設定を読みだす
    private final LocalServiceTestHelper helper = new LocalServiceTestHelper(
            new LocalDatastoreServiceTestConfig().setDefaultHighRepJobPolicyUnappliedJobPercentage(0));

    // データストアへの接続
    private DatastoreService ds;

    @Before
    public void setUp() {
        helper.setUp();
        // 読みだされた設定によって接続先が変わる
        // In-Memoryやファイルなど
        ds = DatastoreServiceFactory.getDatastoreService();
    }

    @After
    public void tearDown() {
        helper.tearDown();
    }

    @Test
    public void post() throws Exception {
        Entity todo = new Entity("Todo");
        todo.setProperty("detail", "あいうえお");
        ds.put(todo);

        Entity got = ds.get(todo.getKey());
        assertThat(got.getProperty("detail")).named("got.detail").isEqualTo("あいうえお");
    }
}