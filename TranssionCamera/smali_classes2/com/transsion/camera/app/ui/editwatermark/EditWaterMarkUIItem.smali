.class public Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;
.super Ljava/lang/Object;
.source "EditWaterMarkUIItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mImageId:I

.field private mIndex:Ljava/lang/Integer;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->mTitle:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->mImageId:I

    .line 16
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->mIndex:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;)I
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->mIndex:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->mIndex:Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 7
    check-cast p1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->compareTo(Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 50
    instance-of v0, p1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    if-eqz v0, :cond_0

    .line 51
    check-cast p1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->mTitle:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->mTitle:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 53
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getImageId()I
    .locals 0

    .line 36
    iget p0, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->mImageId:I

    return p0
.end method

.method public getIndex()I
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->mIndex:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method
