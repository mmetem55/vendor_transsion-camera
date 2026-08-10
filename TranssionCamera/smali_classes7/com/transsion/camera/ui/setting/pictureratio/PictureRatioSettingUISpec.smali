.class public Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/NoPresetListSettingUISpec;
.source "PictureRatioSettingUISpec.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private isSupportRatioReverse:Z

.field private mRatioOrderIndexArray:[Ljava/lang/Integer;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PictureRatioSettingUISpec"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    const-string v0, "key_picture_size"

    .line 55
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/NoPresetListSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f050055

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;->isSupportRatioReverse:Z

    return-void
.end method

.method private findMaxSizeEveryRatio(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    new-instance v2, Ljava/util/TreeMap;

    new-instance v3, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec$1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec$1;-><init>(Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;)V

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 148
    invoke-static {v3}, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;->orderOfRatio(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 152
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 153
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 159
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 160
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    :cond_3
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;->isSupportRatioReverse:Z

    if-eqz p0, :cond_4

    .line 164
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_4
    return-object v0
.end method

.method private static orderOfRatio(Landroid/util/Size;)I
    .locals 6

    .line 176
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-double v2, p0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v2, v0, v2

    .line 177
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, v2, v4

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-wide v2, 0x3ff5555560000000L    # 1.3333333730697632

    sub-double v2, v0, v2

    .line 179
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double p0, v2, v4

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-wide v2, 0x3ffc71c720000000L    # 1.7777777910232544

    sub-double v2, v0, v2

    .line 181
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double p0, v2, v4

    if-gtz p0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 187
    :cond_2
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenRatio()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double p0, v0, v4

    if-gtz p0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const/4 p0, 0x4

    return p0
.end method

.method private static orderOfRatio(Ljava/lang/String;)I
    .locals 0

    .line 171
    invoke-static {p0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    .line 172
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;->orderOfRatio(Landroid/util/Size;)I

    move-result p0

    return p0
.end method

.method private sizeIndexToString(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "1:1"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p0, "4:3"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-string p0, "16:9"

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;->mResources:Landroid/content/res/Resources;

    const p1, 0x7f100261

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private sizeToRatio([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_2

    .line 195
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 199
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 201
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 202
    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;->orderOfRatio(Ljava/lang/String;)I

    move-result v2

    .line 203
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;->sizeIndexToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected createSupportEntries([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;->sizeToRatio([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected createSupportEntryDrawables([Ljava/lang/String;)[Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0300ab

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 100
    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->typedArrayToDrawableArray(Landroid/content/res/TypedArray;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    array-length v1, v1

    .line 103
    new-array v2, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 105
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 106
    invoke-static {v4}, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;->orderOfRatio(Ljava/lang/String;)I

    move-result v4

    .line 107
    aget-object v4, v0, v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2
.end method

.method protected createSupportEntryValues(Ljava/util/List;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;->findMaxSizeEveryRatio(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 80
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 81
    new-array v1, v0, [Ljava/lang/String;

    .line 82
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 84
    new-array p1, v0, [Ljava/lang/Integer;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;->mRatioOrderIndexArray:[Ljava/lang/Integer;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    .line 86
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;->mRatioOrderIndexArray:[Ljava/lang/Integer;

    aget-object v3, v1, p1

    invoke-static {v3}, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;->orderOfRatio(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 117
    sget-object p0, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "targetValue is null,return index -1"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 120
    :cond_0
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;->orderOfRatio(Ljava/lang/String;)I

    move-result p1

    .line 121
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;->mRatioOrderIndexArray:[Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 123
    sget-object v0, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index is error, orderIndexArray: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;->mRatioOrderIndexArray:[Ljava/lang/Integer;

    .line 124
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", order: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 123
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method protected initEntryViewId()I
    .locals 0

    const p0, 0x7f090401

    return p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const p0, 0x7f0807bb

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f100262

    .line 62
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isValueEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 132
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;->orderOfRatio(Ljava/lang/String;)I

    move-result p0

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;->orderOfRatio(Ljava/lang/String;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldUpdateTint(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
