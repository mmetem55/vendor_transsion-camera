.class Lcom/transsion/camera/feature/setting/shuttersound/ShutterSound$1;
.super Ljava/lang/Object;
.source "ShutterSound.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/shuttersound/ShutterSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/shuttersound/ShutterSound;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/shuttersound/ShutterSound;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/shuttersound/ShutterSound$1;->this$0:Lcom/transsion/camera/feature/setting/shuttersound/ShutterSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    .line 97
    invoke-static {}, Lcom/transsion/camera/feature/setting/shuttersound/ShutterSound;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/shuttersound/ShutterSound$1;->this$0:Lcom/transsion/camera/feature/setting/shuttersound/ShutterSound;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/shuttersound/ShutterSound;->access$100(Lcom/transsion/camera/feature/setting/shuttersound/ShutterSound;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/shuttersound/ShutterSound$1;->this$0:Lcom/transsion/camera/feature/setting/shuttersound/ShutterSound;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/shuttersound/ShutterSound;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStopped()V
    .locals 0

    return-void
.end method
