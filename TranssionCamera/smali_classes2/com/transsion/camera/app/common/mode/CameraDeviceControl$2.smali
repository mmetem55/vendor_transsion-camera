.class Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;
.super Ljava/lang/Object;
.source "CameraDeviceControl.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 1566
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyDeviceClosed(Ljava/lang/String;)V
    .locals 2

    .line 1628
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1632
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "notifyDeviceClosed complete."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1633
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    return-void
.end method

.method public notifyDeviceDisconnected(Ljava/lang/String;)V
    .locals 0

    .line 1638
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5700(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IApp$ICameraDisconnectedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1639
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5700(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IApp$ICameraDisconnectedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IApp$ICameraDisconnectedListener;->onCameraDeviceDisconnected()V

    :cond_0
    return-void
.end method

.method public notifyDeviceError(Ljava/lang/String;I)V
    .locals 0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    .line 1646
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    .line 1648
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    return-void
.end method

.method public notifyDeviceOpened(Ljava/lang/String;)V
    .locals 3

    const-string v0, "onCameraOpened"

    .line 1570
    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 1571
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1573
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1574
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4502(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)Z

    .line 1575
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1576
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOpenCamera openCamera cameraId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4700(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1577
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4700(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v2

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1580
    :cond_0
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void

    .line 1584
    :cond_1
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "notifyDeviceOpened complete."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1585
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/provider/FeatureProvider;

    move-result-object p1

    if-nez p1, :cond_3

    .line 1586
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1587
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/provider/FeatureProvider;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 1589
    :try_start_1
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "wait setFeatureProvider"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1590
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1592
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1593
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 1594
    monitor-exit p1

    return-void

    .line 1597
    :cond_2
    :goto_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 1600
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1601
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/provider/FeatureProvider;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->setFeatureProvider(Lcom/transsion/camera/app/common/provider/FeatureProvider;)V

    .line 1603
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->updateModeDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    .line 1604
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1605
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingDeviceConfigurator()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setSettingDeviceConfigurator(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;)V

    .line 1607
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1608
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingDeviceConfigurator()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setSettingDeviceConfigurator(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;)V

    .line 1610
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->createAllSettings()V

    .line 1612
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1613
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1615
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    .line 1618
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p1

    .line 1619
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    .line 1620
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isValid()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1621
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 1623
    :cond_9
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method public notifyFirstSteadyFrame(Ljava/lang/String;)V
    .locals 2

    .line 1696
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$6300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1701
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "notifyFirstSteadyFrame complete."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1702
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1703
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1706
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$6400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1707
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$6400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;->onFirstSteadyFrame(Ljava/lang/String;)V

    .line 1709
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1710
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onFirstSteadyFrame()V

    :cond_3
    return-void
.end method

.method public notifyStartCreatSession(Ljava/lang/String;)V
    .locals 1

    .line 1653
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    .line 1655
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$6000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1659
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "notifyStartCreatSession complete."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public notifyStartPreview(ILjava/lang/String;)V
    .locals 3

    .line 1664
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$6100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    move-result-object v0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 1666
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$6200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    move-result-object v0

    .line 1668
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v2, v0, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 1672
    :cond_1
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStartPreview "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " complete."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1674
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p2, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$5200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    if-ne p1, v1, :cond_2

    .line 1675
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1676
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 p1, 0x8

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_2
    return-void
.end method

.method public notifyStopPreview(Ljava/lang/String;)V
    .locals 0

    .line 1682
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ICameraControl$IModeConfig;->onConfigAfterStopPreview()V

    return-void
.end method

.method public notifyTakePictureFailed(Ljava/lang/String;)V
    .locals 0

    .line 1687
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1688
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onModeCaptureFailed()V

    goto :goto_0

    .line 1690
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "notifyTakePictureFailed mCurrentMode is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
