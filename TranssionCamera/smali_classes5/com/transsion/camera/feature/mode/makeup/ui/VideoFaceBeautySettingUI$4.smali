.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$4;
.super Ljava/lang/Object;
.source "VideoFaceBeautySettingUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$ContrastListener;


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

    .line 116
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$4;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeContrast(Z)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$4;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->access$100(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$4;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->access$100(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->closeContrast(Z)V

    :cond_0
    return-void
.end method

.method public openContrast()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$4;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->access$100(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$4;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->access$100(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->openContrast()V

    :cond_0
    return-void
.end method
