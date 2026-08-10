.class public Lcom/transsion/camera/utils/SettingInfo$Area;
.super Ljava/lang/Object;
.source "SettingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/SettingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Area"
.end annotation


# instance fields
.field public rect:Landroid/graphics/Rect;

.field public weight:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    .line 1858
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/utils/SettingInfo$Area;-><init>(Landroid/graphics/Rect;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 0

    .line 1861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1862
    iput-object p1, p0, Lcom/transsion/camera/utils/SettingInfo$Area;->rect:Landroid/graphics/Rect;

    .line 1863
    iput p2, p0, Lcom/transsion/camera/utils/SettingInfo$Area;->weight:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1868
    instance-of v0, p1, Lcom/transsion/camera/utils/SettingInfo$Area;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1871
    :cond_0
    check-cast p1, Lcom/transsion/camera/utils/SettingInfo$Area;

    .line 1872
    iget-object v0, p0, Lcom/transsion/camera/utils/SettingInfo$Area;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 1873
    iget-object v0, p1, Lcom/transsion/camera/utils/SettingInfo$Area;->rect:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    return v1

    .line 1875
    :cond_1
    iget-object v2, p1, Lcom/transsion/camera/utils/SettingInfo$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 1877
    :cond_2
    iget p0, p0, Lcom/transsion/camera/utils/SettingInfo$Area;->weight:I

    iget p1, p1, Lcom/transsion/camera/utils/SettingInfo$Area;->weight:I

    if-ne p0, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/utils/SettingInfo$Area;->rect:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    const-string v1, "NULL"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Weight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/utils/SettingInfo$Area;->weight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
