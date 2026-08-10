.class public Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;
.super Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;
.source "MoreEditOrderPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$IModeOrderCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mModeOrderStorage:Lcom/transsion/camera/app/mode/ModeOrderStorage;

.field private final mModeReplaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSecureCamera:Z

.field private final mVideoModes:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$gjyuAwmFNUBr3ye4NlWMu1pWVBc(Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->lambda$setModeList$1(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ydGFio0r-YAng2n1GsBjKIfgl3Q(Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->lambda$setModeList$0(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;Z)V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mModeReplaceMap:Ljava/util/Map;

    .line 64
    iput-object p1, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mContext:Landroid/content/Context;

    .line 65
    iput-boolean p3, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mSecureCamera:Z

    .line 66
    new-instance p3, Lcom/transsion/camera/app/mode/ModeOrderStorage;

    invoke-direct {p3, p2}, Lcom/transsion/camera/app/mode/ModeOrderStorage;-><init>(Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object p3, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mModeOrderStorage:Lcom/transsion/camera/app/mode/ModeOrderStorage;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f03011b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mVideoModes:[Ljava/lang/String;

    const-string p0, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    const-string p1, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    .line 69
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private generateDefaultModeOrder(Ljava/util/List;Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$IModeOrderCallBack;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$IModeOrderCallBack;",
            ")V"
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 163
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 164
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 169
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    move v10, v9

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-string v12, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    if-eqz v11, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/transsion/camera/app/common/FeatureResource;

    .line 170
    iget-object v13, v11, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    move-object v14, p0

    invoke-direct {p0, v13}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->isVideoModeType(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 171
    iget-object v12, v11, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    const-string v13, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 173
    invoke-interface {v4, v7, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v9, v6

    goto :goto_0

    :cond_0
    if-eqz v9, :cond_1

    .line 177
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_1
    invoke-interface {v4, v7, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v13, v11, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-static {v13, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 184
    invoke-interface {v3, v7, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v8, v6

    goto :goto_0

    :cond_3
    if-eqz v8, :cond_4

    add-int/lit8 v10, v10, 0x1

    .line 189
    invoke-interface {v3, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 191
    :cond_4
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    move-object v14, p0

    .line 196
    invoke-static {v3, v12}, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->removeMode(Ljava/util/List;Ljava/lang/String;)Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v5

    if-nez v5, :cond_6

    .line 197
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 198
    sget-object v5, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v8, "AICAM is not config!!!"

    invoke-static {v5, v8}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 199
    invoke-interface {v3, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    if-eqz v5, :cond_7

    .line 201
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_7
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x7

    if-lt v5, v8, :cond_e

    .line 207
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v8, v7

    .line 208
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    add-int/2addr v8, v6

    const/4 v9, 0x2

    if-le v8, v9, :cond_8

    goto :goto_3

    .line 214
    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/transsion/camera/app/common/FeatureResource;

    .line 215
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 216
    invoke-interface {v0, v7, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 219
    :cond_9
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 220
    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v8, 0x5

    if-eqz v6, :cond_b

    .line 221
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/app/common/FeatureResource;

    .line 222
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 223
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v8, :cond_a

    .line 230
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v8, :cond_d

    .line 231
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 233
    :cond_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 234
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/app/common/FeatureResource;

    .line 235
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 236
    invoke-interface {v0, v7, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 238
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v8, :cond_c

    .line 244
    :cond_d
    invoke-direct {p0}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->providerMoreFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 246
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    .line 248
    :cond_e
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 249
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 250
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/common/FeatureResource;

    .line 251
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 252
    invoke-interface {v0, v7, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 255
    :cond_f
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 256
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 257
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/FeatureResource;

    .line 258
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 259
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 263
    :cond_10
    :goto_6
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v3, p2

    .line 265
    invoke-interface {v3, v0, v1, v2}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$IModeOrderCallBack;->onGenerated(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private generateModeOrder(Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$IModeOrderCallBack;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;[",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$IModeOrderCallBack;",
            ")V"
        }
    .end annotation

    .line 103
    invoke-virtual {p0, p3, p2}, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    .line 105
    invoke-static {v0, v1}, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->removeMode(Ljava/util/List;Ljava/lang/String;)Lcom/transsion/camera/app/common/FeatureResource;

    .line 107
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 109
    iget-object v2, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mModeOrderStorage:Lcom/transsion/camera/app/mode/ModeOrderStorage;

    invoke-virtual {v2, p1}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->getTabModeOrder(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 110
    iget-object v3, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mModeOrderStorage:Lcom/transsion/camera/app/mode/ModeOrderStorage;

    invoke-virtual {v3, p1}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->getPanelModeOrder(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_4

    .line 113
    iget-boolean v3, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mSecureCamera:Z

    const-string v4, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    const-string v5, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    if-eqz v3, :cond_0

    .line 114
    invoke-static {v2, v5}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 116
    :cond_0
    invoke-direct {p0, v2, p3}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->replaceModesIfNeeded([Ljava/lang/String;[Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v2, p2}, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    if-nez p1, :cond_1

    .line 120
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 122
    :cond_1
    iget-boolean v3, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mSecureCamera:Z

    if-eqz v3, :cond_2

    .line 123
    invoke-static {p1, v5}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 125
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->replaceModesIfNeeded([Ljava/lang/String;[Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 129
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    .line 130
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 v3, p2, -0x1

    add-int/2addr v3, p3

    if-ne v3, v1, :cond_3

    .line 135
    new-instance p0, Ljava/util/ArrayList;

    add-int/2addr p2, p3

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    invoke-interface {p0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    invoke-interface {p4, v2, p1, p0}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$IModeOrderCallBack;->onGenerated(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 141
    :cond_3
    sget-object p1, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mode size not match, configModeSize: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", reorderModeSize: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mModeOrderStorage:Lcom/transsion/camera/app/mode/ModeOrderStorage;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->clear()V

    .line 145
    invoke-direct {p0, v0, p4}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->generateDefaultModeOrder(Ljava/util/List;Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$IModeOrderCallBack;)V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 149
    sget-object p2, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This should not happen, panelModeOrder: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 151
    iget-object p1, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mModeOrderStorage:Lcom/transsion/camera/app/mode/ModeOrderStorage;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->clear()V

    .line 154
    :cond_5
    invoke-direct {p0, v0, p4}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->generateDefaultModeOrder(Ljava/util/List;Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$IModeOrderCallBack;)V

    :goto_1
    return-void
.end method

.method private isVideoModeType(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.transsion.camera.feature.mode.armode.ARModeEntry"

    .line 269
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    .line 270
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mVideoModes:[Ljava/lang/String;

    .line 271
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$setModeList$0(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mBackTabModeList:Ljava/util/List;

    .line 76
    iput-object p2, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mBackPanelModeList:Ljava/util/List;

    .line 77
    iput-object p3, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mBackCameraModeList:Ljava/util/List;

    return-void
.end method

.method private synthetic lambda$setModeList$1(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mFrontTabModeList:Ljava/util/List;

    .line 81
    iput-object p2, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mFrontPanelModeList:Ljava/util/List;

    .line 82
    iput-object p3, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mFrontCameraModeList:Ljava/util/List;

    return-void
.end method

.method private providerMoreFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
    .locals 2

    .line 275
    new-instance v0, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    const-string v1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    .line 276
    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1001d9

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    const p0, 0x7f080714

    .line 278
    iput p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    return-object v0
.end method

.method private replaceModesIfNeeded([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mModeReplaceMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 88
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->replaceString([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public moreModeShow(Ljava/lang/String;)Z
    .locals 0

    .line 307
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->getCameraModes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x7

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setModeList(Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;)V

    const-string v1, "0"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->generateModeOrder(Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$IModeOrderCallBack;)V

    .line 79
    new-instance p2, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;)V

    const-string v0, "1"

    invoke-direct {p0, v0, p1, p3, p2}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->generateModeOrder(Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$IModeOrderCallBack;)V

    return-void
.end method

.method public updateCurrentModes(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;)V"
        }
    .end annotation

    .line 284
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 285
    iput-object p2, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mBackTabModeList:Ljava/util/List;

    .line 286
    iput-object p3, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mBackPanelModeList:Ljava/util/List;

    .line 287
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mBackCameraModeList:Ljava/util/List;

    .line 288
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 289
    iget-object p1, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mBackCameraModeList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    iget-object p1, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mModeOrderStorage:Lcom/transsion/camera/app/mode/ModeOrderStorage;

    const-string v0, "0"

    invoke-virtual {p1, v0, p2}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->updateTabModeOrder(Ljava/lang/String;Ljava/util/List;)V

    .line 292
    iget-object p0, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mModeOrderStorage:Lcom/transsion/camera/app/mode/ModeOrderStorage;

    invoke-virtual {p0, v0, p3}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->updatePanelModeOrder(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 294
    :cond_0
    iput-object p2, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mFrontTabModeList:Ljava/util/List;

    .line 295
    iput-object p3, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mFrontPanelModeList:Ljava/util/List;

    .line 296
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mFrontCameraModeList:Ljava/util/List;

    .line 297
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 298
    iget-object p1, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mFrontCameraModeList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 300
    iget-object p1, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mModeOrderStorage:Lcom/transsion/camera/app/mode/ModeOrderStorage;

    const-string v0, "1"

    invoke-virtual {p1, v0, p2}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->updateTabModeOrder(Ljava/lang/String;Ljava/util/List;)V

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mModeOrderStorage:Lcom/transsion/camera/app/mode/ModeOrderStorage;

    invoke-virtual {p0, v0, p3}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->updatePanelModeOrder(Ljava/lang/String;Ljava/util/List;)V

    :goto_0
    return-void
.end method
