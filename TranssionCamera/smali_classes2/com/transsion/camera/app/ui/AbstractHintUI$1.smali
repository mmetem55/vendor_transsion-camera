.class Lcom/transsion/camera/app/ui/AbstractHintUI$1;
.super Ljava/lang/Object;
.source "AbstractHintUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractHintUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractHintUI;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 235
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(I)V

    .line 236
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$700(Lcom/transsion/camera/app/ui/AbstractHintUI;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 237
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$700(Lcom/transsion/camera/app/ui/AbstractHintUI;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$800(Lcom/transsion/camera/app/ui/AbstractHintUI;Ljava/lang/String;)V

    .line 239
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$900(Lcom/transsion/camera/app/ui/AbstractHintUI;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 240
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$900(Lcom/transsion/camera/app/ui/AbstractHintUI;)Landroid/view/View;

    move-result-object v3

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    const-string v4, "scaleY"

    invoke-static {v3, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$1000(Lcom/transsion/camera/app/ui/AbstractHintUI;)Landroid/animation/AnimatorSet;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 242
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$1000(Lcom/transsion/camera/app/ui/AbstractHintUI;)Landroid/animation/AnimatorSet;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 243
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$1000(Lcom/transsion/camera/app/ui/AbstractHintUI;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 244
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->access$1000(Lcom/transsion/camera/app/ui/AbstractHintUI;)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/ui/AbstractHintUI$1$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractHintUI$1$1;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI$1;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method
