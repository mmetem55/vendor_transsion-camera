.class public Lcom/transsion/camera/feature/mode/movie/ui/widget/DividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DividerItemDecoration.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mDividerSize:I

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/DividerItemDecoration;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/DividerItemDecoration;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 33
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/DividerItemDecoration;->setOrientation(I)V

    .line 34
    iput p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/DividerItemDecoration;->mDividerSize:I

    return-void
.end method

.method private setOrientation(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid orientation. It should be either HORIZONTAL or VERTICAL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_1
    :goto_0
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/DividerItemDecoration;->mOrientation:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 48
    iget p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/DividerItemDecoration;->mDividerSize:I

    const/4 p3, 0x0

    if-gtz p2, :cond_0

    .line 49
    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 52
    :cond_0
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/DividerItemDecoration;->mOrientation:I

    const/4 p4, 0x1

    if-ne p0, p4, :cond_1

    .line 53
    invoke-virtual {p1, p3, p2, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method
