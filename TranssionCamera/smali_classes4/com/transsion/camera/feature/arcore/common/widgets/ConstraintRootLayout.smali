.class public Lcom/transsion/camera/feature/arcore/common/widgets/ConstraintRootLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "ConstraintRootLayout.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/widgets/IFragmentRootView;


# instance fields
.field private mIModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/ConstraintRootLayout;->mIModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->isModuleChanging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 44
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 52
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->restoreHierarchyState(Landroid/util/SparseArray;)V

    return-void
.end method

.method public setModuleOperator(Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/ConstraintRootLayout;->mIModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    return-void
.end method
