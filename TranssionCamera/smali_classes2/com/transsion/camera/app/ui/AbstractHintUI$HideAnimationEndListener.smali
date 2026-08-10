.class Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AbstractHintUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractHintUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HideAnimationEndListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractHintUI;)V
    .locals 0

    .line 1158
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/ui/AbstractHintUI$1;)V
    .locals 0

    .line 1158
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1161
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    iget-boolean v0, p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsNeedWaitScale:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1162
    iput-boolean v1, p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsNeedWaitScale:Z

    .line 1163
    iput-boolean v1, p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdOnly:Z

    .line 1164
    iput-boolean v1, p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdTemp:Z

    .line 1165
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAsdHintViewWithAnim()V

    return-void

    .line 1168
    :cond_0
    iget-boolean v0, p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdTemp:Z

    if-eqz v0, :cond_4

    .line 1169
    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$1300(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$1300(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1170
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$1300(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateEffectLayout(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 1172
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$1300(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$1300(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1173
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$1300(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateAlgoritLayout(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 1175
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    iget-boolean v0, p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdOnly:Z

    if-nez v0, :cond_3

    .line 1176
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getExpandInitValue()[I

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getOverallValue()[I

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$1300(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/transsion/camera/app/ui/AbstractHintUI;->initExpandAnimator([I[ILcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 1177
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    iget-object v0, p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$1400(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1178
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 1180
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getOverallValue()[I

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getShrinkTargetValue()[I

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$1300(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/transsion/camera/app/ui/AbstractHintUI;->initShrinkAnimator([I[ILcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 1181
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    iget-object v0, p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$1400(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1182
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 1183
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    iput-boolean v1, p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdOnly:Z

    .line 1184
    iput-boolean v1, p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdTemp:Z

    .line 1185
    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$1500(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$1300(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1186
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$1500(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$1300(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1187
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$1500(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$1300(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1188
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$1500(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$1300(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 1190
    :cond_4
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAsdHintView()V

    :goto_0
    return-void
.end method
