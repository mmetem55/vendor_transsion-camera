.class Lcom/transsion/camera/app/AODSelfieActivity$1;
.super Ljava/lang/Object;
.source "AODSelfieActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/AODSelfieActivity;->shieldSystemGestures(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/AODSelfieActivity;

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/AODSelfieActivity;Landroid/view/View;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/transsion/camera/app/AODSelfieActivity$1;->this$0:Lcom/transsion/camera/app/AODSelfieActivity;

    iput-object p2, p0, Lcom/transsion/camera/app/AODSelfieActivity$1;->val$rootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/AODSelfieActivity$1;->val$rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/transsion/camera/app/AODSelfieActivity$1;->this$0:Lcom/transsion/camera/app/AODSelfieActivity;

    iget-object v3, v3, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 95
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/AODSelfieActivity$1;->this$0:Lcom/transsion/camera/app/AODSelfieActivity;

    iget-object v4, v4, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 94
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/app/AODSelfieActivity$1;->val$rootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return v1
.end method
