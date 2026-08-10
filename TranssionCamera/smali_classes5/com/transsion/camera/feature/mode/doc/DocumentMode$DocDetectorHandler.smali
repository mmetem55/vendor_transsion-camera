.class Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;
.super Landroid/os/Handler;
.source "DocumentMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/doc/DocumentMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DocDetectorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/os/Looper;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    .line 493
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 498
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 499
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 550
    :pswitch_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$1500(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/youtu/ocr/docprocess/DocDetector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/youtu/ocr/docprocess/DocDetector;->xnnDestory()V

    .line 551
    sput-boolean v1, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->sCheckDetectorLicense:Z

    .line 552
    sget-object p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "unInitResource xnnDestory"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 528
    :pswitch_1
    sget-boolean p1, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->sCheckDetectorLicense:Z

    if-eqz p1, :cond_0

    .line 529
    sget-object p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "sCheckDetectorLicense = true return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 533
    :cond_0
    :try_start_0
    sget-object p1, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "initResource start"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$1600(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youtu/ocr/docprocess/DocDetector;->init(Landroid/content/Context;)V

    const-string v0, "oWxLt1xJmA3f1sRtPJwbY9frvu8+7f7ZeOnf6Ug//BSuDF40cJoVL+9UUfHwStdYs6QEDV1cYTSlM9QXA4QDWjpDdjS+cxEHmjwL7aH6PV5W2eQ6EMKft7c9kEfODN327rIyVrzIfIGsssT/Y5RJ4K0cIcsI6a3xvsUeJLthdq+/LKGWev8rl9ao0cALG4+HpwWzksjF3w96Gaz8PZ5VCtr0bec4SGXzWhLGDN/nzsQE8l3uYLZ8IKQkrbUL8A/NpZ32SXyB4MqSA6oIJS7yghon4f9E69pOk+Mp/RQ4TxnDtWK6tG7FIsO1Yrq0bsUiw7ViurRuxSLDtWK6tG7FIsO1Yrq0bsUiw7ViurRuxSLDtWK6tG7FIsO1Yrq0bsUiw7ViurRuxSLDtWK6tG7FIsO1Yrq0bsUiEPnlM7fbvD4fcRLEWmhUozSiQw5euy2yWx5UVPr2LoHH7n/2kSmAc3sImRfKMek4BrhYOYfNKMQcvUN0+epDRxF0ZeDAu1dY"

    const-string v1, "KJ1RZPyECsHOEl0yiDBrGOEl0ye16uRg"

    .line 535
    invoke-static {v0, v1}, Lcom/tencent/youtu/xsdk/YTCommonInterface;->initAuthByString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 537
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$1700(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "DocDetectV15.xbin"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 538
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 539
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/FileUtil;->readStream(Ljava/io/InputStream;I)[B

    move-result-object v1

    .line 541
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$1500(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/youtu/ocr/docprocess/DocDetector;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/youtu/ocr/docprocess/DocDetector;->xnnInitedByByte([B)Z

    move-result p0

    sput-boolean p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->sCheckDetectorLicense:Z

    .line 543
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initResource end sCheckDetectorLicense = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->sCheckDetectorLicense:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ret = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p0

    .line 545
    sget-object p1, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 501
    :pswitch_2
    sget-boolean v0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->sCheckDetectorLicense:Z

    if-nez v0, :cond_2

    .line 502
    sget-object p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Document uninit"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 505
    :cond_2
    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/object/AddData;->getInstance()Lcom/transsion/camera/feature/mode/doc/object/AddData;

    move-result-object v0

    .line 506
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    .line 507
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 508
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 509
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$1500(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/youtu/ocr/docprocess/DocDetector;

    move-result-object v4

    invoke-virtual {v4, v2, v3, p1, v1}, Lcom/youtu/ocr/docprocess/DocDetector;->xnnDetectorApply([BIII)[Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;

    move-result-object p1

    .line 510
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_3

    .line 512
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$402(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Z)Z

    goto :goto_2

    .line 514
    :cond_3
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$1500(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/youtu/ocr/docprocess/DocDetector;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/youtu/ocr/docprocess/DocDetector;->coordinateTransform([Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;I)V

    .line 515
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$402(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Z)Z

    move p0, v1

    .line 516
    :goto_0
    array-length v3, p1

    if-ge p0, v3, :cond_4

    .line 517
    aget-object v3, p1, p0

    iget v3, v3, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    aget-object v3, p1, p0

    iget v3, v3, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v3, v4

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 520
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [F

    .line 521
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_5

    .line 522
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 524
    :cond_5
    sget-object p1, Lcom/transsion/camera/feature/mode/doc/object/Type;->LINE:Lcom/transsion/camera/feature/mode/doc/object/Type;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/feature/mode/doc/object/AddData;->addFloatPoint(Lcom/transsion/camera/feature/mode/doc/object/Type;[F)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
