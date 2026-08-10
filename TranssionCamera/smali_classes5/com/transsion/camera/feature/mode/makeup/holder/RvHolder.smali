.class public abstract Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RvHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# static fields
.field private static final NORMAL_STATE_SET:[I

.field private static final PRESSED_STATE_SET:[I

.field private static final SELECTED_STATE_SET:[I

.field private static final sStates:[[I


# instance fields
.field protected final mDisableStateList:Landroid/content/res/ColorStateList;

.field protected final mStateList:Landroid/content/res/ColorStateList;

.field protected final mStateListBlack:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a7

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 13
    sput-object v1, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;->PRESSED_STATE_SET:[I

    new-array v1, v0, [I

    const v2, 0x10100a1

    aput v2, v1, v3

    .line 17
    sput-object v1, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;->SELECTED_STATE_SET:[I

    new-array v2, v0, [I

    aput v3, v2, v3

    .line 21
    sput-object v2, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;->NORMAL_STATE_SET:[I

    const/4 v4, 0x2

    new-array v4, v4, [[I

    aput-object v1, v4, v3

    aput-object v2, v4, v0

    .line 23
    sput-object v4, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;->sStates:[[I

    return-void
.end method

.method protected constructor <init>(Landroid/view/View;)V
    .locals 9

    .line 33
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 36
    sget v0, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_disable_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 37
    sget v1, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_selected_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 38
    sget v2, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_unselected_color:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 39
    sget v3, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_unselected_color_black:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 41
    new-instance v3, Landroid/content/res/ColorStateList;

    sget-object v4, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;->sStates:[[I

    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v7, 0x0

    aput v1, v6, v7

    const/4 v8, 0x1

    aput v2, v6, v8

    invoke-direct {v3, v4, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;->mStateList:Landroid/content/res/ColorStateList;

    .line 42
    new-instance v2, Landroid/content/res/ColorStateList;

    new-array v3, v5, [I

    aput v0, v3, v7

    aput v0, v3, v8

    invoke-direct {v2, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;->mDisableStateList:Landroid/content/res/ColorStateList;

    .line 43
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v2, v5, [I

    aput v1, v2, v7

    aput p1, v2, v8

    invoke-direct {v0, v4, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;->mStateListBlack:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public abstract bindHolder(Ljava/lang/Object;IIZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIZZ)V"
        }
    .end annotation
.end method
