.method static synthetic lambda$getUnsafeOkHttpClient$0(Ljava/lang/String;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 613
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    .line 615
    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 616
    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 617
    invoke-static {}, Lcom/ems/emsone/utils/Utils;->getDeviceID()Ljava/lang/String;

    move-result-object v13

    .line 618
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const-string v3, "dd-MM-yyyy HH:mm:ss"

    invoke-static {v2, v3}, Lcom/ems/emsone/utils/TimeUtils;->convertDateToString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 619
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v15

    .line 620
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bearer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ems/emsone/datastore/DataStoreManager;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 622
    const-string v3, "android_app_987654"

    const-string v4, "android_s3cr3t_uvwxzy"

    const-string v2, "android"

    const-string v9, "1.1.5"

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object/from16 v16, v9

    move-object v9, v15

    move-object/from16 v17, v15

    move-object v15, v10

    move-object/from16 v10, v16

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ems/emsone/utils/Utils;->buildSignString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 624
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ems/emsone/utils/Utils;->buildSignString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 626
    :cond_0
    invoke-static {v2}, Lcom/ems/emsone/utils/RSAUtils;->sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 627
    invoke-static {}, Lcom/ems/emsone/utils/RSAUtils;->getPublicKeyBase64()Ljava/lang/String;

    move-result-object v3

    .line 628
    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AAA"

    invoke-static {v5, v4}, Lcom/ems/emsone/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-static {v5, v2}, Lcom/ems/emsone/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-static {v5, v0}, Lcom/ems/emsone/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-static {v5, v3}, Lcom/ems/emsone/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-static {v5, v15}, Lcom/ems/emsone/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-virtual {v1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Content-Type"

    const-string v4, "application/json; charset=utf-8"

    .line 634
    invoke-virtual {v1, v2, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Accept"

    const-string v4, "application/json"

    .line 635
    invoke-virtual {v1, v2, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Authorization"

    .line 636
    invoke-virtual {v1, v2, v15}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "platform"

    const-string v4, "android"

    .line 637
    invoke-virtual {v1, v2, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "X-Client-ID"

    const-string v4, "android_app_987654"

    .line 638
    invoke-virtual {v1, v2, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "X-Client-Secret"

    const-string v4, "android_s3cr3t_uvwxzy"

    .line 639
    invoke-virtual {v1, v2, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "device_name"

    .line 640
    invoke-virtual {v1, v2, v11}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "device_model"

    .line 641
    invoke-virtual {v1, v2, v12}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "device_id"

    .line 642
    invoke-virtual {v1, v2, v13}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "date_time"

    .line 643
    invoke-virtual {v1, v2, v14}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "time_zone"

    move-object/from16 v4, v17

    .line 644
    invoke-virtual {v1, v2, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "signature"

    .line 645
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "public_key"

    .line 646
    invoke-virtual {v0, v1, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "version"

    move-object/from16 v2, v16

    .line 647
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 649
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    move-object/from16 v1, p1

    .line 657
