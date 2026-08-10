.class Lcom/transsion/camera/app/common/mode/ModeManager$MyQCResultListener;
.super Ljava/lang/Object;
.source "ModeManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/ModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyQCResultListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/ModeManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V
    .locals 0

    .line 2177
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$MyQCResultListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/mode/ModeManager$1;)V
    .locals 0

    .line 2177
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager$MyQCResultListener;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    return-void
.end method


# virtual methods
.method public needQCNotifyActionToAppUI(I)I
    .locals 1

    .line 2201
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$MyQCResultListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$800(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2202
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$MyQCResultListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$800(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public needQCSaveJpegToFile([BZLcom/transsion/camera/app/common/mode/ICameraMode;)I
    .locals 0

    if-eqz p3, :cond_0

    .line 2192
    invoke-interface {p3, p1, p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needQCSaveJpegToFile([BZ)I

    goto :goto_0

    .line 2194
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "error needQCSaveJpegToFile, currentMode is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public needQCUpdateThumbnailView(ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/ICameraMode;)I
    .locals 0

    if-eqz p3, :cond_0

    .line 2182
    invoke-interface {p3, p1, p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needQCUpdateThumbnailView(ILandroid/graphics/Bitmap;)I

    goto :goto_0

    .line 2184
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "error needQCUpdateThumbnailView, currentMode is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
