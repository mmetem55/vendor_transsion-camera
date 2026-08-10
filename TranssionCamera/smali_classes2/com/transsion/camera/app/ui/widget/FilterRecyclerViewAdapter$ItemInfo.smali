.class public Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;
.super Ljava/lang/Object;
.source "FilterRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemInfo"
.end annotation


# instance fields
.field private final mDrawableRes:I

.field private final mFilterId:Ljava/lang/String;

.field private final mTitleRes:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->mFilterId:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->mDrawableRes:I

    .line 35
    iput p3, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->mTitleRes:I

    return-void
.end method


# virtual methods
.method public getDrawableRes()I
    .locals 0

    .line 39
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->mDrawableRes:I

    return p0
.end method

.method public getFilterId()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->mFilterId:Ljava/lang/String;

    return-object p0
.end method

.method public getTitleRes()I
    .locals 0

    .line 47
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->mTitleRes:I

    return p0
.end method
