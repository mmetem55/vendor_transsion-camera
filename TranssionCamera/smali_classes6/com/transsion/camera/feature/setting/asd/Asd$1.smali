.class Lcom/transsion/camera/feature/setting/asd/Asd$1;
.super Ljava/lang/Object;
.source "Asd.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/asd/Asd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/asd/Asd;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/asd/Asd;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 304
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/Asd$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 308
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/Asd;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged] + key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isNightShotSupport ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$000(Lcom/transsion/camera/feature/setting/asd/Asd;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$100(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 313
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const-string v6, "key_super_definition"

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "key_ai_detection"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1
    const-string v2, "key_filter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2
    const-string v2, "key_camera_zoom"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0

    :sswitch_3
    const-string v2, "wide_camera"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_0

    :sswitch_4
    const-string v2, "key_flash"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v1, v5

    goto :goto_0

    :sswitch_5
    const-string v2, "key_flash_facade"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v1, v7

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    move v1, v8

    :goto_0
    const-string p1, "off"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    .line 342
    :pswitch_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 343
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$700(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1, v8}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$100(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->sendSettingChangeRequest()V

    goto/16 :goto_3

    .line 324
    :pswitch_1
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$302(Lcom/transsion/camera/feature/setting/asd/Asd;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$400(Lcom/transsion/camera/feature/setting/asd/Asd;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 326
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$100(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    goto :goto_1

    .line 328
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$100(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    .line 330
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$100(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->sendSettingChangeRequest()V

    goto/16 :goto_3

    .line 347
    :pswitch_2
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$100(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->getDeviceZoomRatio()I

    move-result v1

    const/16 v2, 0x96

    if-lt v1, v2, :cond_9

    goto :goto_2

    :cond_9
    move v7, v8

    .line 348
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoomState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Integer.parseInt(value) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " getDeviceZoomRatio = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 349
    invoke-static {p2}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$100(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->getDeviceZoomRatio()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 348
    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 350
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$800(Lcom/transsion/camera/feature/setting/asd/Asd;)Z

    move-result p2

    if-ne p2, v7, :cond_a

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$900(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p2

    invoke-interface {p2, v6}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 351
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1, v7}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$802(Lcom/transsion/camera/feature/setting/asd/Asd;Z)Z

    .line 352
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$100(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->sendSettingChangeRequest()V

    goto :goto_3

    .line 333
    :pswitch_3
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$100(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    goto :goto_3

    .line 316
    :pswitch_4
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$202(Lcom/transsion/camera/feature/setting/asd/Asd;Ljava/lang/String;)Ljava/lang/String;

    .line 317
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$000(Lcom/transsion/camera/feature/setting/asd/Asd;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 318
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$100(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    goto :goto_3

    .line 320
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$100(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    goto :goto_3

    .line 336
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_SUPER_DEFINITION = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$500(Lcom/transsion/camera/feature/setting/asd/Asd;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$600(Lcom/transsion/camera/feature/setting/asd/Asd;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 338
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$100(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p0

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v7

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setSuperResolutionOpend(Z)V

    :cond_c
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x711a6189 -> :sswitch_6
        -0x6bb0b257 -> :sswitch_5
        -0x62d091f0 -> :sswitch_4
        -0x6115b1ef -> :sswitch_3
        -0x43305133 -> :sswitch_2
        0x8991158 -> :sswitch_1
        0x34421d0e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
