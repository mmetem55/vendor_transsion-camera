.class public Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;
.source "SuperDefinitionSettingUISpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;
    }
.end annotation


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final ALL_INFO_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultInfo:Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

.field private final mResource:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 8

    const-string v0, "key_super_definition"

    .line 119
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 31
    new-instance v0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0808f0

    const/4 v5, 0x0

    const v6, 0x7f0808f1

    const v7, 0x7f0808ef

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->mDefaultInfo:Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

    .line 33
    new-instance v1, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$1;-><init>(Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->ALL_INFO_MAP:Ljava/util/Map;

    .line 120
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->mResource:Landroid/content/res/Resources;

    .line 121
    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->loadDrawable(Landroid/content/res/Resources;)V

    return-void
.end method

.method private findSuitableInfo(Ljava/lang/String;[I)Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;
    .locals 7

    if-eqz p2, :cond_0

    .line 240
    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 241
    aget p2, p2, v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    .line 247
    :goto_0
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 248
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionBackCamera()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 249
    :cond_1
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 250
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionFrontCamera()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v1

    .line 252
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object p2, p1

    .line 257
    :cond_3
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getLargestSupportedPictureSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 259
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    mul-int/2addr p2, p1

    int-to-float p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    const p2, 0x49742400    # 1000000.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x41700000    # 15.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_4

    .line 261
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->mDefaultInfo:Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

    return-object p0

    :cond_4
    const/high16 p2, 0x4f000000

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->ALL_INFO_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 267
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 268
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v6, v5, p2

    if-gez v6, :cond_5

    .line 272
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

    move-object v1, v4

    move p2, v5

    goto :goto_2

    .line 275
    :cond_6
    sget-object p2, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findSuitableInfo: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " --> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_3

    .line 277
    :cond_7
    sget-object p1, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "findSuitableInfo largest is null."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_3
    if-nez v1, :cond_8

    .line 280
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->mDefaultInfo:Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

    :cond_8
    return-object v1
.end method

.method private inSensorErrorStatus(Ljava/lang/String;[I)Z
    .locals 4

    .line 199
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    .line 200
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f05008a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 201
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v1

    .line 202
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 204
    array-length v3, p2

    if-lez v3, :cond_0

    .line 205
    aget p2, p2, v2

    goto :goto_0

    :cond_0
    move p2, v2

    .line 207
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result p2

    if-eqz p0, :cond_2

    if-nez v1, :cond_1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private loadDrawables([Ljava/lang/String;Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;)[Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 286
    array-length p0, p1

    .line 287
    new-array v0, p0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_4

    .line 289
    aget-object v2, p1, v1

    const-string v3, "off"

    .line 290
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    .line 296
    invoke-virtual {p2}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->getSingleOffDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    .line 299
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->getMultiOffDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    :cond_1
    const-string v3, "on"

    .line 301
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 302
    invoke-virtual {p2}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->getOnDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    :cond_2
    const-string v3, "billion"

    .line 303
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 304
    invoke-virtual {p2}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->getBillionDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public createSupportedEntries(Ljava/lang/String;[ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 163
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 164
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 166
    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 172
    new-array v1, p3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    .line 173
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 175
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_2

    .line 178
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 179
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 180
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntries:[Ljava/lang/String;

    aget-object v1, v3, v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 182
    :cond_2
    sget-object p3, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSupportedEntries cameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", streamIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {p3, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->inSensorErrorStatus(Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 p1, 0x0

    .line 187
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    .line 188
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    const-string p0, "[createSupportedEntries] sat\'s streamId is null set supportEntries to null"

    .line 189
    invoke-static {p3, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 193
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->findSuitableInfo(Ljava/lang/String;[I)Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

    move-result-object p1

    .line 194
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->mResource:Landroid/content/res/Resources;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->loadDrawable(Landroid/content/res/Resources;)V

    .line 195
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->loadDrawables([Ljava/lang/String;Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryDrawables:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public getMPValue(Ljava/lang/String;[ILjava/lang/String;)I
    .locals 0

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->findSuitableInfo(Ljava/lang/String;[I)Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

    move-result-object p0

    .line 226
    invoke-virtual {p0, p3}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->getMPValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected final init(Landroid/content/res/Resources;)V
    .locals 0

    .line 126
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->init(Landroid/content/res/Resources;)V

    return-void
.end method

.method protected initEntries(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 0

    const p0, 0x7f0300db

    .line 146
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .locals 0

    const p0, 0x7f0300dc

    .line 156
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryValues(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 0

    const p0, 0x7f0300dd

    .line 151
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryViewId()I
    .locals 0

    const p0, 0x7f090407

    return p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const p0, 0x7f0808f0

    const/4 v0, 0x0

    .line 136
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f1002ed

    .line 131
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public shouldHighLightShow(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "off"

    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 221
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->shouldHighLightShow(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public shouldUpdateTint(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "off"

    .line 213
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
