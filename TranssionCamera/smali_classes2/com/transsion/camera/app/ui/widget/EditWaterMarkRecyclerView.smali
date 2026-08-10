.class public Lcom/transsion/camera/app/ui/widget/EditWaterMarkRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "EditWaterMarkRecyclerView.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/editor/IEditorMotionDetector;


# instance fields
.field private mLastMotionAction:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/EditWaterMarkRecyclerView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/EditWaterMarkRecyclerView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getMotionState()I
    .locals 0

    .line 43
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/EditWaterMarkRecyclerView;->mLastMotionAction:I

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 32
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/EditWaterMarkRecyclerView;->mLastMotionAction:I

    .line 38
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
