.class Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;
.super Ljava/lang/Object;
.source "ScreenFlash.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleScreenFlashLedFlashNotSupport(Ljava/lang/String;)V
    .locals 4

    const-string v0, "auto"

    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 141
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$1000(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Z

    move-result p1

    .line 142
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is flash required:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$400(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "on"

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$400(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleScreenFlashLedFlashSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "on"

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "auto"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$1000(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Z

    move-result p1

    .line 132
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is flash required: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$400(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Z)V

    :cond_0
    return-void
.end method

.method private onTakePictureStartImpl()V
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$800(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "fire flash should in onFlashFire Callback"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    const-string v1, "key_flash"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$900(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screen flash: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " led flash: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->handleScreenFlashLedFlashSupport(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screen flash is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->handleScreenFlashLedFlashNotSupport(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic onCaptureEnd()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;->onCaptureEnd()V

    return-void
.end method

.method public onCaptureStart()V
    .locals 2

    .line 102
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onCaptureStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$200(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Z)V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$400(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Z)V

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$700(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)V

    return-void
.end method

.method public takePictureEnd(Z)V
    .locals 0

    return-void
.end method

.method public takePictureStart()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$500(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "screen flash is not support"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->access$200(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Z)V

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->processOnTakingPicture()V

    return-void
.end method
