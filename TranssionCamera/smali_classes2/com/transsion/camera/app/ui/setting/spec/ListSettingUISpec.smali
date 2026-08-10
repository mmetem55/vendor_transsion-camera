.class public abstract Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;
.super Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
.source "ListSettingUISpec.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 1

    const/4 v0, 0x3

    .line 29
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;-><init>(Ljava/lang/String;ILandroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createSupportedEntries(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 59
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 61
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 66
    new-array v1, p1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 69
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    .line 70
    new-array v0, p1, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryDrawables:[Landroid/graphics/drawable/Drawable;

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryExtDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 72
    new-array v0, p1, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryExtDrawables:[Landroid/graphics/drawable/Drawable;

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_4

    .line 75
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 76
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 77
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntries:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v2, v0

    .line 78
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v1

    aput-object v3, v2, v0

    .line 79
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryExtDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 80
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryExtDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v2, v1

    aput-object v1, v3, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected init(Landroid/content/res/Resources;)V
    .locals 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->initTitle(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mTitle:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mMessage:Ljava/lang/String;

    .line 36
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntrySummaries:[Ljava/lang/String;

    .line 40
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->initEntries(Landroid/content/res/Resources;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntries:[Ljava/lang/String;

    .line 41
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->initEntryValues(Landroid/content/res/Resources;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    .line 43
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->typedArrayToDrawableArray(Landroid/content/res/TypedArray;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    .line 45
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->initEntryExtDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->typedArrayToDrawableArray(Landroid/content/res/TypedArray;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryExtDrawables:[Landroid/graphics/drawable/Drawable;

    .line 50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method protected abstract initEntries(Landroid/content/res/Resources;)[Ljava/lang/String;
.end method

.method protected abstract initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
.end method

.method protected initEntryExtDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract initEntryValues(Landroid/content/res/Resources;)[Ljava/lang/String;
.end method

.method protected abstract initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
.end method

.method protected abstract initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
.end method
