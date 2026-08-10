.class Lcom/transsion/camera/feature/setting/stblur/STBlur$1;
.super Ljava/lang/Object;
.source "STBlur.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/stblur/STBlur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/stblur/STBlur;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/stblur/STBlur;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur$1;->this$0:Lcom/transsion/camera/feature/setting/stblur/STBlur;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur$1;->this$0:Lcom/transsion/camera/feature/setting/stblur/STBlur;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/stblur/STBlur;->access$000(Lcom/transsion/camera/feature/setting/stblur/STBlur;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur$1;->this$0:Lcom/transsion/camera/feature/setting/stblur/STBlur;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/stblur/STBlur;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStopped()V
    .locals 0

    return-void
.end method
