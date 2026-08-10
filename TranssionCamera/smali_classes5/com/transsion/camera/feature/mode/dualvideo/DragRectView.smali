.class public Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;
.super Landroid/view/View;
.source "DragRectView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;
    }
.end annotation


# static fields
.field private static final BOTTOM:I = 0x17

.field private static final CENTER:I = 0x19

.field private static final DIRECTION_EDAGE:I = 0x46

.field private static final LEFT:I = 0x16

.field private static final LEFT_BOTTOM:I = 0x13

.field private static final LEFT_TOP:I = 0x11

.field private static final RIGHT:I = 0x18

.field private static final RIGHT_BOTTOM:I = 0x14

.field private static final RIGHT_TOP:I = 0x12

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TOP:I = 0x15


# instance fields
.field private mAreaWidth:I

.field private mBottomAreaEdge:I

.field private mDownX:F

.field private mDownY:F

.field private mDragDirection:I

.field private mLastX:I

.field private mLastY:I

.field private mMaxRectHeight:I

.field private mMaxRectWidth:I

.field private mMinRectHeight:I

.field private mMinRectWidth:I

.field private mOriBottom:I

.field private mOriLeft:I

.field private mOriRight:I

.field private mOriTop:I

.field private mPipEdgeOffsetRespond:I

.field private mRectChangedListener:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;

.field private mTopAreaEdge:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 65
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mTopAreaEdge:I

    .line 17
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mBottomAreaEdge:I

    .line 18
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMinRectWidth:I

    .line 19
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMinRectHeight:I

    .line 20
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMaxRectWidth:I

    .line 21
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMaxRectHeight:I

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDownX:F

    .line 24
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDownY:F

    .line 66
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_edge_offset_respond:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 16
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mTopAreaEdge:I

    .line 17
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mBottomAreaEdge:I

    .line 18
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMinRectWidth:I

    .line 19
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMinRectHeight:I

    .line 20
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMaxRectWidth:I

    .line 21
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMaxRectHeight:I

    const/4 p2, 0x0

    .line 23
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDownX:F

    .line 24
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDownY:F

    .line 60
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_edge_offset_respond:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 16
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mTopAreaEdge:I

    .line 17
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mBottomAreaEdge:I

    .line 18
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMinRectWidth:I

    .line 19
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMinRectHeight:I

    .line 20
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMaxRectWidth:I

    .line 21
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMaxRectHeight:I

    const/4 p2, 0x0

    .line 23
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDownX:F

    .line 24
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDownY:F

    .line 54
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_edge_offset_respond:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    return-void
.end method

.method private bottom(I)V
    .locals 3

    .line 246
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriBottom:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriBottom:I

    .line 247
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mBottomAreaEdge:I

    if-le v0, p1, :cond_0

    .line 248
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriBottom:I

    .line 250
    :cond_0
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriBottom:I

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriTop:I

    sub-int v1, p1, v0

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMinRectHeight:I

    if-gt v1, v2, :cond_1

    add-int/2addr v0, v2

    .line 251
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriBottom:I

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v0

    .line 252
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMaxRectHeight:I

    if-lt p1, v1, :cond_2

    add-int/2addr v0, v1

    .line 253
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriBottom:I

    :cond_2
    :goto_0
    return-void
.end method

.method private center(Landroid/view/View;II)V
    .locals 3

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, p3

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, p2

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr p2, p3

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/lit8 v2, p3, 0x0

    .line 214
    :cond_0
    iget p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mAreaWidth:I

    if-le v2, p3, :cond_1

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int v0, p3, v0

    move v2, p3

    .line 218
    :cond_1
    iget p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mTopAreaEdge:I

    if-ge v1, p3, :cond_2

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p2, p3

    move v1, p3

    .line 222
    :cond_2
    iget p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mBottomAreaEdge:I

    if-le p2, p3, :cond_3

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    sub-int v1, p3, p2

    move p2, p3

    .line 227
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mRectChangedListener:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;

    if-eqz p0, :cond_4

    .line 228
    invoke-interface {p0, v0, v1, v2, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;->onChanging(IIII)V

    .line 230
    :cond_4
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private getDirection(Landroid/view/View;II)I
    .locals 4

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    const/16 v2, 0x46

    if-ge p2, v2, :cond_0

    if-ge p3, v2, :cond_0

    const/16 p0, 0x11

    return p0

    :cond_0
    if-ge p3, v2, :cond_1

    sub-int v3, v0, p0

    sub-int/2addr v3, p2

    if-ge v3, v2, :cond_1

    const/16 p0, 0x12

    return p0

    :cond_1
    if-ge p2, v2, :cond_2

    sub-int v3, v1, p1

    sub-int/2addr v3, p3

    if-ge v3, v2, :cond_2

    const/16 p0, 0x13

    return p0

    :cond_2
    sub-int/2addr v0, p0

    sub-int/2addr v0, p2

    if-ge v0, v2, :cond_3

    sub-int p0, v1, p1

    sub-int/2addr p0, p3

    if-ge p0, v2, :cond_3

    const/16 p0, 0x14

    return p0

    :cond_3
    if-ge p2, v2, :cond_4

    const/16 p0, 0x16

    return p0

    :cond_4
    if-ge p3, v2, :cond_5

    const/16 p0, 0x15

    return p0

    :cond_5
    if-ge v0, v2, :cond_6

    const/16 p0, 0x18

    return p0

    :cond_6
    sub-int/2addr v1, p1

    sub-int/2addr v1, p3

    if-ge v1, v2, :cond_7

    const/16 p0, 0x17

    return p0

    :cond_7
    const/16 p0, 0x19

    return p0
.end method

.method private getOutTouchDirection(Landroid/view/View;II)I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 315
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x0

    aget v1, v0, p1

    sub-int v1, p2, v1

    .line 316
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    aget v1, v0, v3

    sub-int v1, p3, v1

    .line 317
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    if-ge v1, v2, :cond_0

    const/16 p0, 0x11

    return p0

    :cond_0
    aget v1, v0, p1

    sub-int v1, p2, v1

    .line 320
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    if-ge v1, v2, :cond_1

    aget v1, v0, v3

    sub-int v1, p3, v1

    .line 321
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    if-ge v1, v2, :cond_1

    const/16 p0, 0x12

    return p0

    :cond_1
    aget v1, v0, p1

    sub-int v1, p2, v1

    .line 324
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    if-ge v1, v2, :cond_2

    aget v1, v0, v3

    sub-int v1, p3, v1

    .line 325
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    if-ge v1, v2, :cond_2

    const/16 p0, 0x13

    return p0

    :cond_2
    aget v1, v0, p1

    sub-int v1, p2, v1

    .line 328
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    if-ge v1, v2, :cond_3

    aget v1, v0, v3

    sub-int v1, p3, v1

    .line 329
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    if-ge v1, v2, :cond_3

    const/16 p0, 0x14

    return p0

    :cond_3
    aget v1, v0, p1

    sub-int v1, p2, v1

    .line 332
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    if-ge v1, v2, :cond_4

    const/16 p0, 0x16

    return p0

    :cond_4
    aget v1, v0, v3

    sub-int v1, p3, v1

    .line 335
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    if-ge v1, v2, :cond_5

    const/16 p0, 0x15

    return p0

    :cond_5
    aget p1, v0, p1

    sub-int/2addr p2, p1

    .line 338
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    if-ge p1, p2, :cond_6

    const/16 p0, 0x18

    return p0

    :cond_6
    aget p1, v0, v3

    sub-int/2addr p3, p1

    .line 341
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mPipEdgeOffsetRespond:I

    if-ge p1, p0, :cond_7

    const/16 p0, 0x17

    return p0

    :cond_7
    const/16 p0, 0x19

    return p0
.end method

.method private left(I)V
    .locals 3

    .line 258
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriLeft:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriLeft:I

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 260
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriLeft:I

    .line 262
    :cond_0
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriRight:I

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriLeft:I

    sub-int v1, p1, v0

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMinRectWidth:I

    if-gt v1, v2, :cond_1

    sub-int/2addr p1, v2

    .line 263
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriLeft:I

    goto :goto_0

    :cond_1
    sub-int v0, p1, v0

    .line 264
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMaxRectWidth:I

    if-lt v0, v1, :cond_2

    sub-int/2addr p1, v1

    .line 265
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriLeft:I

    :cond_2
    :goto_0
    return-void
.end method

.method private right(I)V
    .locals 3

    .line 270
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriRight:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriRight:I

    .line 271
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mAreaWidth:I

    if-le v0, p1, :cond_0

    .line 272
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriRight:I

    .line 274
    :cond_0
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriRight:I

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriLeft:I

    sub-int v1, p1, v0

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMinRectWidth:I

    if-gt v1, v2, :cond_1

    add-int/2addr v0, v2

    .line 275
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriRight:I

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v0

    .line 276
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMaxRectWidth:I

    if-lt p1, v1, :cond_2

    add-int/2addr v0, v1

    .line 277
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriRight:I

    :cond_2
    :goto_0
    return-void
.end method

.method private setDown(Landroid/view/View;Landroid/view/MotionEvent;Z)V
    .locals 3

    .line 114
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDown, getX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", getRawX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", getY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", getRawY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDownX:F

    .line 116
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDownY:F

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriLeft:I

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriRight:I

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriTop:I

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriBottom:I

    .line 121
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mLastY:I

    .line 122
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mLastX:I

    if-eqz p3, :cond_0

    .line 123
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p0, p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->getOutTouchDirection(Landroid/view/View;II)I

    move-result p1

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p0, p1, p3, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->getDirection(Landroid/view/View;II)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDragDirection:I

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mRectChangedListener:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;

    if-eqz p0, :cond_1

    .line 126
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;->onChangeBegin()V

    :cond_1
    return-void
.end method

.method private top(I)V
    .locals 3

    .line 234
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriTop:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriTop:I

    .line 235
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mTopAreaEdge:I

    if-ge v0, p1, :cond_0

    .line 236
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriTop:I

    .line 238
    :cond_0
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriBottom:I

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriTop:I

    sub-int v1, p1, v0

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMinRectHeight:I

    if-gt v1, v2, :cond_1

    sub-int/2addr p1, v2

    .line 239
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriTop:I

    goto :goto_0

    :cond_1
    sub-int v0, p1, v0

    .line 240
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMaxRectHeight:I

    if-lt v0, v1, :cond_2

    sub-int/2addr p1, v1

    .line 241
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriTop:I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public imitateTouch(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    .line 106
    invoke-direct {p0, p0, p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->setDown(Landroid/view/View;Landroid/view/MotionEvent;Z)V

    .line 108
    :cond_0
    invoke-virtual {p0, p0, p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->processDrag(Landroid/view/View;Landroid/view/MotionEvent;I)V

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p0, 0x0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 94
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 96
    invoke-direct {p0, p1, p2, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->setDown(Landroid/view/View;Landroid/view/MotionEvent;Z)V

    .line 98
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->processDrag(Landroid/view/View;Landroid/view/MotionEvent;I)V

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1
.end method

.method public processDrag(Landroid/view/View;Landroid/view/MotionEvent;I)V
    .locals 4

    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    goto/16 :goto_2

    .line 134
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p3

    if-le p3, v0, :cond_1

    return-void

    .line 137
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p3

    float-to-int p3, p3

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mLastX:I

    sub-int/2addr p3, v0

    .line 138
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mLastY:I

    sub-int/2addr v0, v1

    .line 139
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDragDirection:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 153
    :pswitch_0
    invoke-direct {p0, p1, p3, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->center(Landroid/view/View;II)V

    goto :goto_0

    .line 144
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->right(I)V

    goto :goto_0

    .line 147
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->bottom(I)V

    goto :goto_0

    .line 141
    :pswitch_3
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->left(I)V

    goto :goto_0

    .line 150
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->top(I)V

    goto :goto_0

    .line 170
    :pswitch_5
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->right(I)V

    .line 171
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->bottom(I)V

    goto :goto_0

    .line 162
    :pswitch_6
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->left(I)V

    .line 163
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->bottom(I)V

    goto :goto_0

    .line 174
    :pswitch_7
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->right(I)V

    .line 175
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->top(I)V

    goto :goto_0

    .line 166
    :pswitch_8
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->left(I)V

    .line 167
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->top(I)V

    .line 178
    :goto_0
    iget p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDragDirection:I

    const/16 v0, 0x19

    if-eq p3, v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 179
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mRectChangedListener:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;

    if-eqz p3, :cond_2

    .line 180
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriLeft:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriTop:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriRight:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriBottom:I

    invoke-interface {p3, v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;->onChanging(IIII)V

    .line 182
    :cond_2
    iget p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriLeft:I

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriTop:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriRight:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mOriBottom:I

    invoke-virtual {p1, p3, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 184
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mLastX:I

    .line 185
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mLastY:I

    goto :goto_2

    .line 190
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDownX:F

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDownY:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    cmpg-double p1, p1, v2

    if-gtz p1, :cond_5

    .line 191
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mRectChangedListener:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;

    if-eqz p1, :cond_6

    .line 192
    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;->onClick()V

    goto :goto_1

    .line 195
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mRectChangedListener:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;

    if-eqz p1, :cond_6

    .line 196
    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;->onChangeEnd()V

    :cond_6
    :goto_1
    const/4 p1, 0x0

    .line 199
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mDragDirection:I

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAreaSize(III)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mAreaWidth:I

    .line 83
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mTopAreaEdge:I

    .line 84
    iput p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mBottomAreaEdge:I

    return-void
.end method

.method public setEdgeSize(IIII)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMinRectWidth:I

    .line 76
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMinRectHeight:I

    .line 77
    iput p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMaxRectWidth:I

    .line 78
    iput p4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mMaxRectHeight:I

    return-void
.end method

.method public setRectChangedListener(Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->mRectChangedListener:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;

    return-void
.end method
