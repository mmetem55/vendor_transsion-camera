.class public Lcom/faceunity/pta_art/entity/AvatarPTA;
.super Ljava/lang/Object;
.source "AvatarPTA.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MODULE_NEED_BODY_ITEMS_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final MODULE_NEED_DANCE_EXPRESSION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final MODULE_NEED_SOUND_EFFECT_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final serialVersionUID:J = -0x1ca078c185c56d62L


# instance fields
.field private beard:Ljava/lang/String;

.field private beardColorValue:D

.field private beardIndex:I

.field private bigThumbNail:Ljava/lang/String;

.field private bigThumbNailRes:I

.field private bodyFile:Ljava/lang/String;

.field private bundleDir:Ljava/lang/String;

.field private clothes:Ljava/lang/String;

.field private clothesIndex:I

.field private expressionIndex:I

.field private eyebrow:Ljava/lang/String;

.field private eyebrowIndex:I

.field private eyelashIndex:I

.field private facemake:Ljava/lang/String;

.field private facemakeIndex:I

.field private gender:I

.field private glasses:Ljava/lang/String;

.field private glassesColorValue:D

.field private glassesFrameColorValue:D

.field private glassesIndex:I

.field private hair:Ljava/lang/String;

.field private hairColorValue:D

.field private hairIndex:I

.field private hat:Ljava/lang/String;

.field private hatColorValue:D

.field private hatIndex:I

.field private headFile:Ljava/lang/String;

.field private idCompat:J

.field private irisColorValue:D

.field private isAddFlag:Z

.field public isCustomAvatar:Z

.field private isDualHairColor:Z

.field private lipColorValue:D

.field private pupilIndex:I

.field private shoeIndex:I

.field private shoes:Ljava/lang/String;

.field private skinColorValue:D

.field private smallThumbNail:Ljava/lang/String;

.field private smallThumbNailRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AvatarPTA"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 75
    new-instance v0, Lcom/faceunity/pta_art/entity/AvatarPTA$1;

    invoke-direct {v0}, Lcom/faceunity/pta_art/entity/AvatarPTA$1;-><init>()V

    sput-object v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->MODULE_NEED_BODY_ITEMS_MAP:Ljava/util/HashMap;

    .line 85
    new-instance v0, Lcom/faceunity/pta_art/entity/AvatarPTA$2;

    invoke-direct {v0}, Lcom/faceunity/pta_art/entity/AvatarPTA$2;-><init>()V

    sput-object v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->MODULE_NEED_DANCE_EXPRESSION_MAP:Ljava/util/HashMap;

    .line 95
    new-instance v0, Lcom/faceunity/pta_art/entity/AvatarPTA$3;

    invoke-direct {v0}, Lcom/faceunity/pta_art/entity/AvatarPTA$3;-><init>()V

    sput-object v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->MODULE_NEED_SOUND_EFFECT_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;IIIIIIIIZDD)V
    .locals 6

    move-object v0, p0

    move v1, p4

    move v2, p8

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v3, -0x1

    .line 31
    iput-wide v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->idCompat:J

    const-string v3, ""

    .line 39
    iput-object v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bodyFile:Ljava/lang/String;

    .line 40
    iput-object v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hair:Ljava/lang/String;

    .line 41
    iput-object v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glasses:Ljava/lang/String;

    .line 42
    iput-object v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->clothes:Ljava/lang/String;

    .line 43
    iput-object v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beard:Ljava/lang/String;

    .line 44
    iput-object v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyebrow:Ljava/lang/String;

    .line 45
    iput-object v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->facemake:Ljava/lang/String;

    .line 46
    iput-object v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hat:Ljava/lang/String;

    .line 47
    iput-object v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->shoes:Ljava/lang/String;

    const/4 v3, 0x0

    .line 49
    iput v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairIndex:I

    .line 50
    iput v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesIndex:I

    .line 51
    iput v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->clothesIndex:I

    .line 52
    iput v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardIndex:I

    .line 53
    iput v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyelashIndex:I

    .line 54
    iput v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyebrowIndex:I

    .line 55
    iput v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->facemakeIndex:I

    .line 56
    iput v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->pupilIndex:I

    .line 57
    iput v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hatIndex:I

    .line 58
    iput v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->shoeIndex:I

    const-wide/16 v4, 0x0

    .line 61
    iput-wide v4, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->skinColorValue:D

    .line 62
    iput-wide v4, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->lipColorValue:D

    .line 63
    iput-wide v4, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->irisColorValue:D

    .line 64
    iput-wide v4, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairColorValue:D

    .line 65
    iput-wide v4, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesColorValue:D

    .line 66
    iput-wide v4, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesFrameColorValue:D

    .line 67
    iput-wide v4, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardColorValue:D

    .line 68
    iput-wide v4, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hatColorValue:D

    const/4 v4, 0x1

    .line 69
    iput-boolean v4, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isDualHairColor:Z

    .line 73
    iput-boolean v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isCustomAvatar:Z

    move-object v4, p1

    .line 182
    iput-object v4, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bundleDir:Ljava/lang/String;

    move v4, p2

    .line 183
    iput v4, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->smallThumbNailRes:I

    move v4, p3

    .line 184
    iput v4, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bigThumbNailRes:I

    .line 185
    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->gender:I

    move-object v4, p5

    .line 186
    iput-object v4, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->headFile:Ljava/lang/String;

    .line 187
    iput v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->expressionIndex:I

    .line 188
    invoke-static {}, Lcom/faceunity/pta_art/constant/ResourceJson;->getMaleNewBodyPos()I

    move-result v4

    if-ne v2, v4, :cond_0

    if-nez v1, :cond_0

    .line 190
    invoke-static {}, Lcom/faceunity/pta_art/constant/ResourceJson;->getNewClothesBody()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bodyFile:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 v4, 0xb

    .line 192
    invoke-static {v4, p4}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResources(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bodyFile:Ljava/lang/String;

    :goto_0
    move v1, p6

    .line 194
    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairIndex:I

    move v1, p7

    .line 195
    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardIndex:I

    .line 196
    iput v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->clothesIndex:I

    move v1, p9

    .line 197
    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->shoeIndex:I

    move/from16 v1, p14

    .line 198
    iput-boolean v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isDualHairColor:Z

    move-wide/from16 v1, p15

    .line 199
    iput-wide v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairColorValue:D

    move/from16 v1, p10

    .line 200
    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyebrowIndex:I

    move/from16 v1, p11

    .line 201
    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->facemakeIndex:I

    move/from16 v1, p12

    .line 202
    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesIndex:I

    move/from16 v1, p13

    .line 203
    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hatIndex:I

    move-wide/from16 v1, p17

    .line 204
    iput-wide v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->skinColorValue:D

    .line 205
    iput-boolean v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isCustomAvatar:Z

    .line 206
    iput-boolean v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isAddFlag:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;IIIIIZD)V
    .locals 5

    move-object v0, p0

    move v1, p4

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, -0x1

    .line 31
    iput-wide v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->idCompat:J

    const-string v2, ""

    .line 39
    iput-object v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bodyFile:Ljava/lang/String;

    .line 40
    iput-object v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hair:Ljava/lang/String;

    .line 41
    iput-object v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glasses:Ljava/lang/String;

    .line 42
    iput-object v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->clothes:Ljava/lang/String;

    .line 43
    iput-object v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beard:Ljava/lang/String;

    .line 44
    iput-object v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyebrow:Ljava/lang/String;

    .line 45
    iput-object v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->facemake:Ljava/lang/String;

    .line 46
    iput-object v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hat:Ljava/lang/String;

    .line 47
    iput-object v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->shoes:Ljava/lang/String;

    const/4 v2, 0x0

    .line 49
    iput v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairIndex:I

    .line 50
    iput v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesIndex:I

    .line 51
    iput v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->clothesIndex:I

    .line 52
    iput v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardIndex:I

    .line 53
    iput v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyelashIndex:I

    .line 54
    iput v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyebrowIndex:I

    .line 55
    iput v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->facemakeIndex:I

    .line 56
    iput v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->pupilIndex:I

    .line 57
    iput v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hatIndex:I

    .line 58
    iput v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->shoeIndex:I

    const-wide/16 v3, 0x0

    .line 61
    iput-wide v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->skinColorValue:D

    .line 62
    iput-wide v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->lipColorValue:D

    .line 63
    iput-wide v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->irisColorValue:D

    .line 64
    iput-wide v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairColorValue:D

    .line 65
    iput-wide v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesColorValue:D

    .line 66
    iput-wide v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesFrameColorValue:D

    .line 67
    iput-wide v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardColorValue:D

    .line 68
    iput-wide v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hatColorValue:D

    const/4 v3, 0x1

    .line 69
    iput-boolean v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isDualHairColor:Z

    .line 73
    iput-boolean v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isCustomAvatar:Z

    move-object v3, p1

    .line 162
    iput-object v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bundleDir:Ljava/lang/String;

    move v3, p2

    .line 163
    iput v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->smallThumbNailRes:I

    move v3, p3

    .line 164
    iput v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bigThumbNailRes:I

    .line 165
    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->gender:I

    move-object v3, p5

    .line 166
    iput-object v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->headFile:Ljava/lang/String;

    move v3, p6

    .line 167
    iput v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->expressionIndex:I

    const/16 v3, 0xb

    .line 168
    invoke-static {v3, p4}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResources(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bodyFile:Ljava/lang/String;

    move v1, p7

    .line 169
    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairIndex:I

    move v1, p8

    .line 170
    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardIndex:I

    move v1, p9

    .line 171
    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->clothesIndex:I

    move v1, p10

    .line 172
    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->shoeIndex:I

    move/from16 v1, p11

    .line 173
    iput-boolean v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isDualHairColor:Z

    move-wide/from16 v3, p12

    .line 174
    iput-wide v3, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairColorValue:D

    .line 175
    iput-boolean v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isCustomAvatar:Z

    .line 176
    iput-boolean v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isAddFlag:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZDDZ)V
    .locals 4

    move-object v0, p0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, -0x1

    .line 31
    iput-wide v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->idCompat:J

    const/4 v1, 0x0

    .line 49
    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairIndex:I

    .line 50
    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesIndex:I

    .line 51
    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->clothesIndex:I

    .line 52
    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardIndex:I

    .line 53
    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyelashIndex:I

    .line 54
    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyebrowIndex:I

    .line 55
    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->facemakeIndex:I

    .line 56
    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->pupilIndex:I

    .line 57
    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hatIndex:I

    .line 58
    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->shoeIndex:I

    const-wide/16 v2, 0x0

    .line 62
    iput-wide v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->lipColorValue:D

    .line 63
    iput-wide v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->irisColorValue:D

    .line 65
    iput-wide v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesColorValue:D

    .line 66
    iput-wide v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesFrameColorValue:D

    .line 67
    iput-wide v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardColorValue:D

    .line 68
    iput-wide v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hatColorValue:D

    move-object v2, p1

    .line 213
    iput-object v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bundleDir:Ljava/lang/String;

    move v2, p2

    .line 214
    iput v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->smallThumbNailRes:I

    move v2, p3

    .line 215
    iput v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bigThumbNailRes:I

    move v2, p5

    .line 216
    iput v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->gender:I

    move-object v2, p6

    .line 217
    iput-object v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->headFile:Ljava/lang/String;

    .line 218
    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->expressionIndex:I

    move-object v2, p4

    .line 219
    iput-object v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bodyFile:Ljava/lang/String;

    move-object v2, p7

    .line 220
    iput-object v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hair:Ljava/lang/String;

    move-object v2, p8

    .line 221
    iput-object v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beard:Ljava/lang/String;

    move-object v2, p9

    .line 222
    iput-object v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->clothes:Ljava/lang/String;

    move-object v2, p10

    .line 223
    iput-object v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->shoes:Ljava/lang/String;

    move/from16 v2, p15

    .line 224
    iput-boolean v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isDualHairColor:Z

    move-wide/from16 v2, p16

    .line 225
    iput-wide v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairColorValue:D

    move-object v2, p11

    .line 226
    iput-object v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyebrow:Ljava/lang/String;

    move-object/from16 v2, p12

    .line 227
    iput-object v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->facemake:Ljava/lang/String;

    move-object/from16 v2, p13

    .line 228
    iput-object v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glasses:Ljava/lang/String;

    move-object/from16 v2, p14

    .line 229
    iput-object v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hat:Ljava/lang/String;

    move-wide/from16 v2, p18

    .line 230
    iput-wide v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->skinColorValue:D

    move/from16 v2, p20

    .line 231
    iput-boolean v2, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isCustomAvatar:Z

    .line 232
    iput-boolean v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isAddFlag:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 31
    iput-wide v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->idCompat:J

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bundleDir:Ljava/lang/String;

    const/4 v1, -0x1

    .line 34
    iput v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bigThumbNailRes:I

    .line 36
    iput v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->smallThumbNailRes:I

    .line 38
    iput-object v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->headFile:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bodyFile:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hair:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glasses:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->clothes:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beard:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyebrow:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->facemake:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hat:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->shoes:Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->gender:I

    .line 49
    iput v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairIndex:I

    .line 50
    iput v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesIndex:I

    .line 51
    iput v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->clothesIndex:I

    .line 52
    iput v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardIndex:I

    .line 53
    iput v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyelashIndex:I

    .line 54
    iput v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyebrowIndex:I

    .line 55
    iput v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->facemakeIndex:I

    .line 56
    iput v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->pupilIndex:I

    .line 57
    iput v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hatIndex:I

    .line 58
    iput v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->shoeIndex:I

    .line 59
    iput v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->expressionIndex:I

    const-wide/16 v1, 0x0

    .line 61
    iput-wide v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->skinColorValue:D

    .line 62
    iput-wide v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->lipColorValue:D

    .line 63
    iput-wide v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->irisColorValue:D

    .line 64
    iput-wide v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairColorValue:D

    .line 65
    iput-wide v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesColorValue:D

    .line 66
    iput-wide v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesFrameColorValue:D

    .line 67
    iput-wide v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardColorValue:D

    .line 68
    iput-wide v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hatColorValue:D

    const/4 v1, 0x1

    .line 69
    iput-boolean v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isDualHairColor:Z

    .line 73
    iput-boolean v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isCustomAvatar:Z

    .line 236
    invoke-virtual {p0, p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setBundleDir(Ljava/lang/String;)V

    .line 237
    iput-object p3, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->headFile:Ljava/lang/String;

    const/16 p1, 0xb

    .line 238
    invoke-static {p1, p2}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResources(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bodyFile:Ljava/lang/String;

    .line 239
    iput p2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->gender:I

    .line 240
    iput-boolean v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isAddFlag:Z

    .line 241
    iput-boolean v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isCustomAvatar:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 31
    iput-wide v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->idCompat:J

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bundleDir:Ljava/lang/String;

    const/4 v1, -0x1

    .line 34
    iput v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bigThumbNailRes:I

    .line 36
    iput v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->smallThumbNailRes:I

    .line 38
    iput-object v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->headFile:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bodyFile:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hair:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glasses:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->clothes:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beard:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyebrow:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->facemake:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hat:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->shoes:Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->gender:I

    .line 59
    iput v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->expressionIndex:I

    const-wide/16 v2, 0x0

    .line 61
    iput-wide v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->skinColorValue:D

    .line 62
    iput-wide v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->lipColorValue:D

    .line 63
    iput-wide v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->irisColorValue:D

    .line 64
    iput-wide v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairColorValue:D

    .line 65
    iput-wide v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesColorValue:D

    .line 66
    iput-wide v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesFrameColorValue:D

    .line 67
    iput-wide v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardColorValue:D

    .line 68
    iput-wide v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hatColorValue:D

    const/4 v2, 0x1

    .line 69
    iput-boolean v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isDualHairColor:Z

    .line 146
    iput v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairIndex:I

    .line 147
    iput v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesIndex:I

    .line 148
    iput v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->clothesIndex:I

    .line 149
    iput v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardIndex:I

    .line 150
    iput v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyelashIndex:I

    .line 151
    iput v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyebrowIndex:I

    .line 152
    iput v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->facemakeIndex:I

    .line 153
    iput v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->pupilIndex:I

    .line 154
    iput v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hatIndex:I

    .line 155
    iput v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->shoeIndex:I

    .line 156
    iput-boolean p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isAddFlag:Z

    .line 157
    iput-boolean v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isCustomAvatar:Z

    return-void
.end method

.method private getStringByIndex(Ljava/util/List;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/faceunity/pta_art/entity/BundleRes;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 494
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    if-ltz p2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lt p2, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/faceunity/pta_art/entity/BundleRes;

    iget-object p0, p0, Lcom/faceunity/pta_art/entity/BundleRes;->path:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public static isNeedToBody(I)Z
    .locals 2

    .line 107
    sget-object v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->MODULE_NEED_BODY_ITEMS_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static isNeedToDanceExpression(I)Z
    .locals 2

    .line 115
    sget-object v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->MODULE_NEED_DANCE_EXPRESSION_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNeedToSoundEffect(I)Z
    .locals 2

    .line 123
    sget-object v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->MODULE_NEED_SOUND_EFFECT_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public avatarAvailable()Z
    .locals 4

    .line 245
    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getIdCompat()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 246
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bundleDir:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public clone()Lcom/faceunity/pta_art/entity/AvatarPTA;
    .locals 3

    .line 624
    new-instance v0, Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-direct {v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;-><init>()V

    .line 625
    iget-object v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bundleDir:Ljava/lang/String;

    iput-object v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bundleDir:Ljava/lang/String;

    .line 626
    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bigThumbNailRes:I

    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bigThumbNailRes:I

    .line 627
    iget-object v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bigThumbNail:Ljava/lang/String;

    iput-object v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bigThumbNail:Ljava/lang/String;

    .line 628
    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->smallThumbNailRes:I

    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->smallThumbNailRes:I

    .line 629
    iget-object v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->smallThumbNail:Ljava/lang/String;

    iput-object v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->smallThumbNail:Ljava/lang/String;

    .line 630
    iget-object v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->headFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->headFile:Ljava/lang/String;

    .line 631
    iget-object v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bodyFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bodyFile:Ljava/lang/String;

    .line 632
    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->gender:I

    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->gender:I

    .line 633
    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairIndex:I

    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairIndex:I

    .line 634
    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesIndex:I

    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesIndex:I

    .line 635
    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->clothesIndex:I

    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->clothesIndex:I

    .line 636
    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardIndex:I

    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardIndex:I

    .line 637
    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyelashIndex:I

    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyelashIndex:I

    .line 638
    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyebrowIndex:I

    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyebrowIndex:I

    .line 639
    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->facemakeIndex:I

    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->facemakeIndex:I

    .line 640
    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->pupilIndex:I

    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->pupilIndex:I

    .line 641
    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hatIndex:I

    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hatIndex:I

    .line 642
    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->shoeIndex:I

    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->shoeIndex:I

    .line 643
    iget-wide v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->skinColorValue:D

    iput-wide v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->skinColorValue:D

    .line 644
    iget-wide v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->lipColorValue:D

    iput-wide v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->lipColorValue:D

    .line 645
    iget-wide v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->irisColorValue:D

    iput-wide v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->irisColorValue:D

    .line 646
    iget-wide v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairColorValue:D

    iput-wide v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairColorValue:D

    .line 647
    iget-wide v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesColorValue:D

    iput-wide v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesColorValue:D

    .line 648
    iget-wide v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesFrameColorValue:D

    iput-wide v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesFrameColorValue:D

    .line 649
    iget-wide v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardColorValue:D

    iput-wide v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardColorValue:D

    .line 650
    iget-wide v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hatColorValue:D

    iput-wide v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hatColorValue:D

    .line 651
    iget-boolean v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isDualHairColor:Z

    iput-boolean v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isDualHairColor:Z

    .line 652
    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->expressionIndex:I

    iput v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->expressionIndex:I

    .line 653
    iget-boolean v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isAddFlag:Z

    iput-boolean v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isAddFlag:Z

    .line 654
    iget-wide v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->idCompat:J

    iput-wide v1, v0, Lcom/faceunity/pta_art/entity/AvatarPTA;->idCompat:J

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->clone()Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p0

    return-object p0
.end method

.method public compare(Lcom/faceunity/pta_art/entity/AvatarPTA;)Z
    .locals 4

    .line 660
    iget v0, p1, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairIndex:I

    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairIndex:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesIndex:I

    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesIndex:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/faceunity/pta_art/entity/AvatarPTA;->clothesIndex:I

    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->clothesIndex:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardIndex:I

    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardIndex:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyelashIndex:I

    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyelashIndex:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyebrowIndex:I

    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyebrowIndex:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/faceunity/pta_art/entity/AvatarPTA;->facemakeIndex:I

    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->facemakeIndex:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/faceunity/pta_art/entity/AvatarPTA;->pupilIndex:I

    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->pupilIndex:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/faceunity/pta_art/entity/AvatarPTA;->hatIndex:I

    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hatIndex:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/faceunity/pta_art/entity/AvatarPTA;->shoeIndex:I

    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->shoeIndex:I

    if-ne v0, v1, :cond_1

    iget-wide v0, p1, Lcom/faceunity/pta_art/entity/AvatarPTA;->skinColorValue:D

    iget-wide v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->skinColorValue:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p1, Lcom/faceunity/pta_art/entity/AvatarPTA;->lipColorValue:D

    iget-wide v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->lipColorValue:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p1, Lcom/faceunity/pta_art/entity/AvatarPTA;->irisColorValue:D

    iget-wide v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->irisColorValue:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p1, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesColorValue:D

    iget-wide v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesColorValue:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p1, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesFrameColorValue:D

    iget-wide v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesFrameColorValue:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p1, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardColorValue:D

    iget-wide v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardColorValue:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/faceunity/pta_art/entity/AvatarPTA;->isAddFlag:Z

    iget-boolean v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isAddFlag:Z

    if-ne v0, v1, :cond_1

    iget-wide v0, p1, Lcom/faceunity/pta_art/entity/AvatarPTA;->hatColorValue:D

    iget-wide p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hatColorValue:D

    cmpl-double p0, v0, p0

    if-eqz p0, :cond_0

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

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 616
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 617
    :cond_0
    check-cast p1, Lcom/faceunity/pta_art/entity/AvatarPTA;

    .line 618
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBeardColorValue()D
    .locals 2

    .line 546
    iget-wide v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardColorValue:D

    return-wide v0
.end method

.method public getBeardFile()Ljava/lang/String;
    .locals 2

    .line 464
    iget-boolean v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isCustomAvatar:Z

    if-eqz v0, :cond_0

    .line 465
    iget-object p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beard:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 467
    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->gender:I

    invoke-static {v0, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardIndex:I

    invoke-direct {p0, v0, v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getStringByIndex(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBeardIndex()I
    .locals 0

    .line 377
    iget p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardIndex:I

    return p0
.end method

.method public getBigThumbNail()Ljava/lang/String;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bigThumbNail:Ljava/lang/String;

    return-object p0
.end method

.method public getBigThumbNailRes()I
    .locals 0

    .line 284
    iget p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bigThumbNailRes:I

    return p0
.end method

.method public getBodyFile()Ljava/lang/String;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bodyFile:Ljava/lang/String;

    return-object p0
.end method

.method public getBundleDir()Ljava/lang/String;
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bundleDir:Ljava/lang/String;

    return-object p0
.end method

.method public getClothesFile()Ljava/lang/String;
    .locals 2

    .line 435
    iget-boolean v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isCustomAvatar:Z

    if-eqz v0, :cond_0

    .line 436
    iget-object p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->clothes:Ljava/lang/String;

    return-object p0

    :cond_0
    const/16 v0, 0x8

    .line 438
    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->gender:I

    invoke-static {v0, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->clothesIndex:I

    invoke-direct {p0, v0, v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getStringByIndex(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getClothesIndex()I
    .locals 0

    .line 337
    iget p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->clothesIndex:I

    return p0
.end method

.method public getExpressionFile(Z)Ljava/lang/String;
    .locals 1

    .line 486
    invoke-static {p1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getExpressionResource(Z)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->expressionIndex:I

    invoke-direct {p0, p1, v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getStringByIndex(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExpressionIndex()I
    .locals 0

    .line 401
    iget p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->expressionIndex:I

    return p0
.end method

.method public getEyebrowFile()Ljava/lang/String;
    .locals 2

    .line 446
    iget-boolean v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isCustomAvatar:Z

    if-eqz v0, :cond_0

    .line 447
    iget-object p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyebrow:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, 0x2

    .line 449
    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->gender:I

    invoke-static {v0, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyebrowIndex:I

    invoke-direct {p0, v0, v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getStringByIndex(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEyebrowIndex()I
    .locals 0

    .line 353
    iget p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyebrowIndex:I

    return p0
.end method

.method public getEyelashFile()Ljava/lang/String;
    .locals 2

    .line 442
    iget v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->gender:I

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyelashIndex:I

    invoke-direct {p0, v0, v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getStringByIndex(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEyelashIndex()I
    .locals 0

    .line 345
    iget p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyelashIndex:I

    return p0
.end method

.method public getFacemakeFile()Ljava/lang/String;
    .locals 2

    .line 453
    iget-boolean v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isCustomAvatar:Z

    if-eqz v0, :cond_0

    .line 454
    iget-object p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->facemake:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, 0x5

    .line 456
    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->gender:I

    invoke-static {v0, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->facemakeIndex:I

    invoke-direct {p0, v0, v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getStringByIndex(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFacemakeIndex()I
    .locals 0

    .line 361
    iget p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->facemakeIndex:I

    return p0
.end method

.method public getGender()I
    .locals 0

    .line 313
    iget p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->gender:I

    return p0
.end method

.method public getGlassesColorValue()D
    .locals 2

    .line 530
    iget-wide v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesColorValue:D

    return-wide v0
.end method

.method public getGlassesFile()Ljava/lang/String;
    .locals 2

    .line 428
    iget-boolean v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isCustomAvatar:Z

    if-eqz v0, :cond_0

    .line 429
    iget-object p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glasses:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, 0x6

    .line 431
    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->gender:I

    invoke-static {v0, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesIndex:I

    invoke-direct {p0, v0, v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getStringByIndex(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGlassesFrameColorValue()D
    .locals 2

    .line 538
    iget-wide v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesFrameColorValue:D

    return-wide v0
.end method

.method public getGlassesIndex()I
    .locals 0

    .line 329
    iget p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesIndex:I

    return p0
.end method

.method public getHairColorValue()D
    .locals 2

    .line 522
    iget-wide v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairColorValue:D

    return-wide v0
.end method

.method public getHairFile()Ljava/lang/String;
    .locals 4

    .line 409
    iget-boolean v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isCustomAvatar:Z

    if-eqz v0, :cond_0

    .line 410
    iget-object p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hair:Ljava/lang/String;

    return-object p0

    .line 412
    :cond_0
    iget v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->gender:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v0

    .line 414
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairIndex:I

    if-ltz v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 415
    iget v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/faceunity/pta_art/entity/BundleRes;

    .line 416
    iget-boolean p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isDualHairColor:Z

    if-eqz p0, :cond_1

    .line 417
    iget-object p0, v0, Lcom/faceunity/pta_art/entity/BundleRes;->others:[Ljava/lang/String;

    if-eqz p0, :cond_2

    array-length v0, p0

    if-lez v0, :cond_2

    .line 418
    aget-object p0, p0, v1

    goto :goto_0

    .line 421
    :cond_1
    iget-object p0, v0, Lcom/faceunity/pta_art/entity/BundleRes;->path:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getHairIndex()I
    .locals 0

    .line 321
    iget p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairIndex:I

    return p0
.end method

.method public getHatColorValue()D
    .locals 2

    .line 554
    iget-wide v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hatColorValue:D

    return-wide v0
.end method

.method public getHatFile()Ljava/lang/String;
    .locals 2

    .line 471
    iget-boolean v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isCustomAvatar:Z

    if-eqz v0, :cond_0

    .line 472
    iget-object p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hat:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, 0x7

    .line 474
    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->gender:I

    invoke-static {v0, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hatIndex:I

    invoke-direct {p0, v0, v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getStringByIndex(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHatIndex()I
    .locals 0

    .line 385
    iget p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hatIndex:I

    return p0
.end method

.method public getHeadFile()Ljava/lang/String;
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->headFile:Ljava/lang/String;

    return-object p0
.end method

.method public getIdCompat()J
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->idCompat:J

    return-wide v0
.end method

.method public getIrisColorValue()D
    .locals 2

    .line 514
    iget-wide v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->irisColorValue:D

    return-wide v0
.end method

.method public getLipColorValue()D
    .locals 2

    .line 506
    iget-wide v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->lipColorValue:D

    return-wide v0
.end method

.method public getPupilFile()Ljava/lang/String;
    .locals 2

    .line 460
    iget v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->gender:I

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->pupilIndex:I

    invoke-direct {p0, v0, v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getStringByIndex(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPupilIndex()I
    .locals 0

    .line 369
    iget p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->pupilIndex:I

    return p0
.end method

.method public getShoeFile()Ljava/lang/String;
    .locals 2

    .line 479
    iget-boolean v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isCustomAvatar:Z

    if-eqz v0, :cond_0

    .line 480
    iget-object p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->shoes:Ljava/lang/String;

    return-object p0

    :cond_0
    const/16 v0, 0x9

    .line 482
    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->gender:I

    invoke-static {v0, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->shoeIndex:I

    invoke-direct {p0, v0, v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getStringByIndex(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShoeIndex()I
    .locals 0

    .line 393
    iget p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->shoeIndex:I

    return p0
.end method

.method public getSkinColorValue()D
    .locals 2

    .line 498
    iget-wide v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->skinColorValue:D

    return-wide v0
.end method

.method public getSmallThumbNail()Ljava/lang/String;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->smallThumbNail:Ljava/lang/String;

    return-object p0
.end method

.method public getSmallThumbNailRes()I
    .locals 0

    .line 288
    iget p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->smallThumbNailRes:I

    return p0
.end method

.method public getSoundEffectId(Z)I
    .locals 0

    .line 490
    iget p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->expressionIndex:I

    invoke-static {p1, p0}, Lcom/faceunity/pta_art/constant/ResourceJson;->getSoundEffectId(ZI)I

    move-result p0

    return p0
.end method

.method public isAddFlag()Z
    .locals 0

    .line 250
    iget-boolean p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isAddFlag:Z

    return p0
.end method

.method public isDualHairColor()Z
    .locals 0

    .line 566
    iget-boolean p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isDualHairColor:Z

    return p0
.end method

.method public isUserCustomAvatar()Z
    .locals 4

    .line 138
    iget-wide v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->idCompat:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setBeardColorValue(D)V
    .locals 0

    .line 550
    iput-wide p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardColorValue:D

    return-void
.end method

.method public setBeardIndex(I)V
    .locals 0

    .line 381
    iput p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardIndex:I

    return-void
.end method

.method public setBigThumbNail(Ljava/lang/String;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bigThumbNail:Ljava/lang/String;

    return-void
.end method

.method public setBodyFile(Ljava/lang/String;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bodyFile:Ljava/lang/String;

    return-void
.end method

.method public setBundleDir(Ljava/lang/String;)V
    .locals 2

    .line 259
    iput-object p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bundleDir:Ljava/lang/String;

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "smallthumbNail.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->smallThumbNail:Ljava/lang/String;

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bigthumbNail.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bigThumbNail:Ljava/lang/String;

    .line 262
    iget v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->gender:I

    const/16 v1, 0xc

    invoke-static {v1, v0}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResources(II)Ljava/lang/String;

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/faceunity/pta_art/constant/ResourceJson;->headBundleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->headFile:Ljava/lang/String;

    return-void
.end method

.method public setClothesIndex(I)V
    .locals 0

    .line 341
    iput p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->clothesIndex:I

    return-void
.end method

.method public setDualHairColor(Z)V
    .locals 0

    .line 562
    iput-boolean p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isDualHairColor:Z

    return-void
.end method

.method public setExpressionIndex(I)V
    .locals 0

    .line 405
    iput p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->expressionIndex:I

    return-void
.end method

.method public setEyebrowIndex(I)V
    .locals 0

    .line 357
    iput p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyebrowIndex:I

    return-void
.end method

.method public setEyelashIndex(I)V
    .locals 0

    .line 349
    iput p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyelashIndex:I

    return-void
.end method

.method public setFacemakeIndex(I)V
    .locals 0

    .line 365
    iput p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->facemakeIndex:I

    return-void
.end method

.method public setGlassesColorValue(D)V
    .locals 0

    .line 534
    iput-wide p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesColorValue:D

    return-void
.end method

.method public setGlassesFrameColorValue(D)V
    .locals 0

    .line 542
    iput-wide p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesFrameColorValue:D

    return-void
.end method

.method public setGlassesIndex(I)V
    .locals 0

    .line 333
    iput p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesIndex:I

    return-void
.end method

.method public setHairColorValue(D)V
    .locals 0

    .line 526
    iput-wide p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairColorValue:D

    return-void
.end method

.method public setHairIndex(I)V
    .locals 0

    .line 325
    iput p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairIndex:I

    return-void
.end method

.method public setHatColorValue(D)V
    .locals 0

    .line 558
    iput-wide p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hatColorValue:D

    return-void
.end method

.method public setHatIndex(I)V
    .locals 0

    .line 389
    iput p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hatIndex:I

    return-void
.end method

.method public setIdCompat(J)V
    .locals 0

    .line 134
    iput-wide p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->idCompat:J

    return-void
.end method

.method public setIrisColorValue(D)V
    .locals 0

    .line 518
    iput-wide p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->irisColorValue:D

    return-void
.end method

.method public setLipColorValue(D)V
    .locals 0

    .line 510
    iput-wide p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->lipColorValue:D

    return-void
.end method

.method public setMaleNewBodyFile(Ljava/lang/Boolean;)V
    .locals 2

    .line 300
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 301
    invoke-static {}, Lcom/faceunity/pta_art/constant/ResourceJson;->getNewClothesBody()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bodyFile:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 p1, 0xb

    .line 303
    iget v0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->gender:I

    invoke-static {p1, v0}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResources(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bodyFile:Ljava/lang/String;

    .line 305
    :goto_0
    sget-object p1, Lcom/faceunity/pta_art/entity/AvatarPTA;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "whs the bodyFile is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bodyFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", the headFile is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->headFile:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setPupilIndex(I)V
    .locals 0

    .line 373
    iput p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->pupilIndex:I

    return-void
.end method

.method public setShoeIndex(I)V
    .locals 0

    .line 397
    iput p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->shoeIndex:I

    return-void
.end method

.method public setSkinColorValue(D)V
    .locals 0

    .line 502
    iput-wide p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->skinColorValue:D

    return-void
.end method

.method public setSmallThumbNail(Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->smallThumbNail:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bundleDir : "

    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bundleDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "idCompat : "

    .line 573
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->idCompat:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "smallThumbNail : "

    .line 574
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->smallThumbNail:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bigThumbNail : "

    .line 575
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bigThumbNail:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "gender : "

    .line 576
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->gender:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "headFile : "

    .line 577
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->headFile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bodyFile : "

    .line 578
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->bodyFile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "lipColorValue : "

    .line 579
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->lipColorValue:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "irisColorValue :"

    .line 580
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->irisColorValue:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "skinColorValue "

    .line 581
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->skinColorValue:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "hatIndex : "

    .line 582
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hatIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "hat : "

    .line 583
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHatFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "hatColorValue : "

    .line 584
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hatColorValue:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "hairIndex : "

    .line 585
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "hair : "

    .line 586
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHairFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isDualHairColor : "

    .line 587
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->isDualHairColor()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "hairColorValue : "

    .line 588
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->hairColorValue:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "glassesIndex : "

    .line 589
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "glasses : "

    .line 590
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGlassesFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "glassesColorValue : "

    .line 591
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesColorValue:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "glassesFrameColorValue : "

    .line 592
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->glassesFrameColorValue:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "eyebrowIndex : "

    .line 593
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyebrowIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "eyebrowFile : "

    .line 594
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getEyebrowFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "eyelashIndex : "

    .line 595
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->eyelashIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "eyelashFile : "

    .line 596
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getEyelashFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "facemakeIndex : "

    .line 597
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->facemakeIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "facemakeFile : "

    .line 598
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getFacemakeFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "pupilIndex : "

    .line 599
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->pupilIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "pupilFile : "

    .line 600
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getPupilFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bearsIndex : "

    .line 601
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "beardFile : "

    .line 602
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBeardFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "beardColorValue : "

    .line 603
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->beardColorValue:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "clothesIndex : "

    .line 604
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->clothesIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "clothes : "

    .line 605
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getClothesFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "shoeIndex : "

    .line 606
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->shoeIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "shoe : "

    .line 607
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getShoeFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "expressionIndex : "

    .line 608
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->expressionIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "expression : "

    .line 609
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getExpressionFile(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isAddFlag : "

    .line 610
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/faceunity/pta_art/entity/AvatarPTA;->isAddFlag:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
