.class public final Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;
.super Ljava/lang/Object;
.source "EditFaceParameter.java"


# static fields
.field private static HeadBone_narrow:Ljava/lang/String;

.field private static HeadBone_shrink:Ljava/lang/String;

.field private static HeadBone_stretch:Ljava/lang/String;

.field private static HeadBone_wide:Ljava/lang/String;

.field private static Head_narrow:Ljava/lang/String;

.field private static Head_wide:Ljava/lang/String;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static head_shrink:Ljava/lang/String;

.field private static head_stretch:Ljava/lang/String;


# instance fields
.field private mDefaultMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field mJsons:[Ljava/lang/String;

.field private mMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "EditFaceParameter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, ""

    .line 19
    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->HeadBone_stretch:Ljava/lang/String;

    .line 20
    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->HeadBone_shrink:Ljava/lang/String;

    .line 21
    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->HeadBone_wide:Ljava/lang/String;

    .line 22
    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->HeadBone_narrow:Ljava/lang/String;

    .line 23
    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->Head_wide:Ljava/lang/String;

    .line 24
    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->Head_narrow:Ljava/lang/String;

    .line 25
    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->head_shrink:Ljava/lang/String;

    .line 26
    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->head_stretch:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mDefaultMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    new-instance v0, Lcom/faceunity/pta_art/utils/JsonUtils;

    invoke-direct {v0, p1}, Lcom/faceunity/pta_art/utils/JsonUtils;-><init>(Landroid/content/Context;)V

    const-string p1, "new/facepup.json"

    .line 35
    invoke-virtual {v0, p1}, Lcom/faceunity/pta_art/utils/JsonUtils;->readFacePupJson(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mJsons:[Ljava/lang/String;

    const/4 v0, 0x2

    .line 37
    aget-object v0, p1, v0

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->HeadBone_stretch:Ljava/lang/String;

    const/4 v0, 0x3

    .line 38
    aget-object v0, p1, v0

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->HeadBone_shrink:Ljava/lang/String;

    const/4 v0, 0x4

    .line 39
    aget-object v0, p1, v0

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->HeadBone_wide:Ljava/lang/String;

    const/4 v0, 0x5

    .line 40
    aget-object v0, p1, v0

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->HeadBone_narrow:Ljava/lang/String;

    const/4 v0, 0x6

    .line 41
    aget-object v0, p1, v0

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->Head_wide:Ljava/lang/String;

    const/4 v0, 0x7

    .line 42
    aget-object v0, p1, v0

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->Head_narrow:Ljava/lang/String;

    const/16 v0, 0x8

    .line 43
    aget-object v0, p1, v0

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->head_shrink:Ljava/lang/String;

    const/16 v0, 0x9

    .line 44
    aget-object v0, p1, v0

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->head_stretch:Ljava/lang/String;

    .line 45
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 46
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mDefaultMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getValue(Ljava/lang/Object;)F
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 118
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, v0, p0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public fillMap(I)V
    .locals 7

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mDefaultMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mJsons:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{\"name\":\"facepup\",\"param\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\"}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/faceunity/wrapper/faceunity;->fuItemGetParam(ILjava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    .line 58
    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mDefaultMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getEditFaceParameters(I)[F
    .locals 0

    const-string p0, "facepup_expression"

    .line 114
    invoke-static {p1, p0}, Lcom/faceunity/wrapper/faceunity;->fuItemGetParamfv(ILjava/lang/String;)[F

    move-result-object p0

    return-object p0
.end method

.method public getParamByKey(Ljava/lang/String;)Ljava/lang/Float;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    return-object p0
.end method

.method public isHeadShapeChangeValues()Z
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mDefaultMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->HeadBone_stretch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->HeadBone_stretch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->getValue(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mDefaultMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->HeadBone_shrink:Ljava/lang/String;

    .line 96
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->HeadBone_shrink:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->getValue(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mDefaultMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->HeadBone_wide:Ljava/lang/String;

    .line 97
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->HeadBone_wide:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->getValue(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mDefaultMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->HeadBone_narrow:Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->HeadBone_narrow:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->getValue(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mDefaultMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->Head_wide:Ljava/lang/String;

    .line 99
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->Head_wide:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->getValue(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mDefaultMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->Head_narrow:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->Head_narrow:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->getValue(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mDefaultMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->head_shrink:Ljava/lang/String;

    .line 101
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->head_shrink:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->getValue(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mDefaultMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->head_stretch:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->head_stretch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->getValue(Ljava/lang/Object;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isShapeChangeValues()Z
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 85
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mDefaultMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->getValue(Ljava/lang/Object;)F

    move-result v2

    .line 86
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->getValue(Ljava/lang/Object;)F

    move-result v1

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setCurrentParam(I)V
    .locals 4

    .line 76
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setCurrentParam] mMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"name\":\"facepup\",\"param\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v2, v0

    :goto_1
    invoke-static {p1, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setParamMap(Ljava/util/HashMap;Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 65
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_1
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"name\":\"facepup\",\"param\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v2, v0

    :goto_2
    invoke-interface {p2, v1, v2, v3}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->setItemParamToController(Ljava/lang/String;D)V

    goto :goto_0

    :cond_2
    return-void
.end method
