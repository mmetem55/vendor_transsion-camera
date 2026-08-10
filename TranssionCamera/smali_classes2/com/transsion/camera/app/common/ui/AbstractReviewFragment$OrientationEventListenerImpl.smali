.class final Lcom/transsion/camera/app/common/ui/AbstractReviewFragment$OrientationEventListenerImpl;
.super Landroid/view/OrientationEventListener;
.source "AbstractReviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OrientationEventListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;Landroid/content/Context;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    .line 111
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;Landroid/content/Context;Lcom/transsion/camera/app/common/ui/AbstractReviewFragment$1;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment$OrientationEventListenerImpl;-><init>(Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    iget v0, v0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mOrientation:I

    .line 124
    invoke-static {p1, v0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->access$100(II)I

    move-result p1

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    iget v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mOrientation:I

    if-eq v0, p1, :cond_1

    .line 126
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->updateOrientation(I)V

    :cond_1
    return-void
.end method
