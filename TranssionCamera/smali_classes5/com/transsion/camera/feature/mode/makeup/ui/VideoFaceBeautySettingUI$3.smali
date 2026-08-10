.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$3;
.super Ljava/lang/Object;
.source "VideoFaceBeautySettingUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$3;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(IZ)V
    .locals 0

    .line 109
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$3;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->access$100(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$3;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->access$100(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->progressChanged(I)V

    :cond_0
    return-void
.end method
