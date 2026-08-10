.class Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI$2;
.super Ljava/lang/Object;
.source "FaceBeautySettingUI.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI$2;->this$0:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 255
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 256
    invoke-static {}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mTranslateUpdateListener2], translate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI$2;->this$0:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->access$200(Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI$2;->this$0:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;->access$200(Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUI;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method
