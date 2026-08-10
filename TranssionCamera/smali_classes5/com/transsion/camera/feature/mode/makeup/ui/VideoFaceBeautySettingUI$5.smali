.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$5;
.super Ljava/lang/Object;
.source "VideoFaceBeautySettingUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;
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
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;


# direct methods
.method public static synthetic $r8$lambda$kapyDBAkuTyVU-3Y0CQmQKuOdog(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$5;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$5;->lambda$onStatusChanged$0(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$5;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onStatusChanged$0(Ljava/lang/String;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$5;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->access$100(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$5;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->access$100(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->updateValueChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 306
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$5;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 309
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "key_video_makeup_style"

    .line 310
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$5;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->access$100(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 312
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$5;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->access$100(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$5$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$5$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$5;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
