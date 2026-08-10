.class final Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$BitmapHandler;
.super Landroid/os/Handler;
.source "AutoWaterMark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BitmapHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;Landroid/os/Looper;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$BitmapHandler;->this$1:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    .line 334
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;Landroid/os/Looper;Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$1;)V
    .locals 0

    .line 331
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$BitmapHandler;-><init>(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 339
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$BitmapHandler;->this$1:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    iget-object p1, p1, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->this$0:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->access$000(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 342
    :try_start_0
    sget-object v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "create water bitmap start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$BitmapHandler;->this$1:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->access$102(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;)Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark$BitmapHandler;->this$1:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->access$200(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;)Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->access$102(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;)Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    const-string p0, "create water bitmap end"

    .line 345
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 346
    monitor-exit p1

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
