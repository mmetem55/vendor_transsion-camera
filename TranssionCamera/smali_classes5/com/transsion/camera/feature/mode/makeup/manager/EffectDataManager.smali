.class public Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;
.super Ljava/lang/Object;
.source "EffectDataManager.java"


# static fields
.field private static final DEFAULT_CAMERA_VALUE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_LIVE_VALUE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final FRONT_CAMERA_ID:I = 0x1

.field public static final MASK:I = -0x10000

.field static NODE_ALL_SLIM:Ljava/lang/String; = null

.field static NODE_BEAUTY_4ITEMS:Ljava/lang/String; = null

.field static NODE_BEAUTY_CAMERA:Ljava/lang/String; = null

.field static NODE_BEAUTY_LIVE:Ljava/lang/String; = null

.field static NODE_DOUBLE_EYE_LID:Ljava/lang/String; = null

.field static NODE_RESHAPE_CAMERA:Ljava/lang/String; = null

.field static NODE_RESHAPE_LIVE:Ljava/lang/String; = null

.field static NODE_WOCAN:Ljava/lang/String; = null

.field public static final OFFSET:I = 0x10

.field private static final STYLE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUB_MASK:I = -0x100

.field public static final SUB_OFFSET:I = 0x8

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static final TYPE_AI_MAKEUP:I = 0xb

.field public static final TYPE_BEAUTY_BODY:I = 0x30000

.field public static final TYPE_BEAUTY_BODY_ENHANCE_HIP:I = 0x30600

.field public static final TYPE_BEAUTY_BODY_ENHANCE_NECK:I = 0x30700

.field public static final TYPE_BEAUTY_BODY_ENLARGE_BREAST:I = 0x30500

.field public static final TYPE_BEAUTY_BODY_LONG_LEG:I = 0x30200

.field public static final TYPE_BEAUTY_BODY_SHRINK_HEAD:I = 0x30900

.field public static final TYPE_BEAUTY_BODY_SLIM_ARM:I = 0x30800

.field public static final TYPE_BEAUTY_BODY_SLIM_LEG:I = 0x30300

.field public static final TYPE_BEAUTY_BODY_SLIM_WAIST:I = 0x30400

.field public static final TYPE_BEAUTY_BODY_THIN:I = 0x30100

.field public static final TYPE_BEAUTY_FACE:I = 0x10000

.field public static final TYPE_BEAUTY_FACE_SHARPEN:I = 0x10300

.field public static final TYPE_BEAUTY_FACE_SMOOTH:I = 0x10100

.field public static final TYPE_BEAUTY_FACE_WHITEN:I = 0x10200

.field public static final TYPE_BEAUTY_RESHAPE:I = 0x20000

.field public static final TYPE_BEAUTY_RESHAPE_BRIGHTEN_EYE:I = 0x21100

.field public static final TYPE_BEAUTY_RESHAPE_CHEEK:I = 0x20500

.field public static final TYPE_BEAUTY_RESHAPE_CHIN:I = 0x20900

.field public static final TYPE_BEAUTY_RESHAPE_EYE:I = 0x20200

.field public static final TYPE_BEAUTY_RESHAPE_EYE_MOVE:I = 0x20f00

.field public static final TYPE_BEAUTY_RESHAPE_EYE_PLUMP:I = 0x21600

.field public static final TYPE_BEAUTY_RESHAPE_EYE_ROTATE:I = 0x20b00

.field public static final TYPE_BEAUTY_RESHAPE_EYE_SPACING:I = 0x20e00

.field public static final TYPE_BEAUTY_RESHAPE_FACE_CUT:I = 0x20400

.field public static final TYPE_BEAUTY_RESHAPE_FACE_OVERALL:I = 0x20100

.field public static final TYPE_BEAUTY_RESHAPE_FACE_SMALL:I = 0x20300

.field public static final TYPE_BEAUTY_RESHAPE_FOREHEAD:I = 0x20a00

.field public static final TYPE_BEAUTY_RESHAPE_JAW:I = 0x20600

.field public static final TYPE_BEAUTY_RESHAPE_MOUTH_MOVE:I = 0x21000

.field public static final TYPE_BEAUTY_RESHAPE_MOUTH_SMILE:I = 0x20d00

.field public static final TYPE_BEAUTY_RESHAPE_MOUTH_ZOOM:I = 0x20c00

.field public static final TYPE_BEAUTY_RESHAPE_NOSE_LEAN:I = 0x20700

.field public static final TYPE_BEAUTY_RESHAPE_NOSE_LONG:I = 0x20800

.field public static final TYPE_BEAUTY_RESHAPE_REMOVE_POUCH:I = 0x21200

.field public static final TYPE_BEAUTY_RESHAPE_SINGLE_TO_DOUBLE_EYELID:I = 0x21500

.field public static final TYPE_BEAUTY_RESHAPE_SMILE_FOLDS:I = 0x21300

.field public static final TYPE_BEAUTY_RESHAPE_WHITEN_TEETH:I = 0x21400

.field public static final TYPE_CLOSE:I = -0x1

.field public static final TYPE_FILTER:I = 0x50000

.field public static final TYPE_MAKEUP:I = 0x40000

.field public static final TYPE_MAKEUP_BLUSHER:I = 0x40200

.field public static final TYPE_MAKEUP_EYEBROW:I = 0x40700

.field public static final TYPE_MAKEUP_EYELASH:I = 0x40300

.field public static final TYPE_MAKEUP_EYESHADOW:I = 0x40600

.field public static final TYPE_MAKEUP_FACIAL:I = 0x40800

.field public static final TYPE_MAKEUP_HAIR:I = 0x40500

.field public static final TYPE_MAKEUP_LIP:I = 0x40100

.field public static final TYPE_MAKEUP_PUPIL:I = 0x40400

.field public static final TYPE_RESTORE:I = 0x70000

.field public static final TYPE_STYLE_MAKEUP:I = 0x60000


# instance fields
.field private mAIMakeUpSupport:Z

.field private final mSavedItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "beauty_Android_camera"

    .line 121
    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->NODE_BEAUTY_CAMERA:Ljava/lang/String;

    const-string v0, "beauty_Android_live"

    .line 122
    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->NODE_BEAUTY_LIVE:Ljava/lang/String;

    const-string v0, "beauty_4Items"

    .line 123
    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->NODE_BEAUTY_4ITEMS:Ljava/lang/String;

    const-string v0, "reshape_camera"

    .line 124
    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->NODE_RESHAPE_CAMERA:Ljava/lang/String;

    const-string v0, "reshape_live"

    .line 125
    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->NODE_RESHAPE_LIVE:Ljava/lang/String;

    const-string v0, "body/allslim"

    .line 126
    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->NODE_ALL_SLIM:Ljava/lang/String;

    const-string v0, "double_eye_lid/newmoon"

    .line 127
    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->NODE_DOUBLE_EYE_LID:Ljava/lang/String;

    const-string v0, "wocan/ziran"

    .line 128
    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->NODE_WOCAN:Ljava/lang/String;

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 208
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const v2, 0x10100

    .line 211
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x3f4ccccd    # 0.8f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x10200

    .line 212
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v6, 0x10300

    .line 213
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, 0x3ea3d70a    # 0.32f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v7, 0x21100

    .line 214
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v9, 0x21200

    .line 215
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v10, 0x21300

    .line 216
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v11, 0x21400

    .line 217
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v12, 0x21500

    .line 218
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x20100

    .line 221
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v14, 0x20300

    .line 222
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x20400

    .line 223
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v14, 0x20200

    .line 224
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x20b00

    .line 225
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v14, 0x20500

    .line 226
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x20600

    .line 227
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v14, 0x20700

    .line 228
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v14, 0x20800

    .line 229
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/high16 v16, 0x3e800000    # 0.25f

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x20900

    .line 230
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x20a00

    .line 231
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x20c00

    .line 232
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x20d00

    .line 233
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x20e00

    .line 234
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x20f00

    .line 235
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x21000

    .line 236
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x21600

    .line 237
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x30100

    .line 240
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x30200

    .line 241
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x30300

    .line 242
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x30900

    .line 243
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x30400

    .line 244
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x30500

    .line 245
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x30600

    .line 246
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x30700

    .line 247
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x30800

    .line 248
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x40100

    .line 251
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x40500

    .line 252
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x40200

    .line 253
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v14, 0x3e4ccccd    # 0.2f

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x40800

    .line 254
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v16, 0x3eb33333    # 0.35f

    move-object/from16 v17, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x40700

    .line 255
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x40600

    .line 256
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x40400

    .line 257
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v16, 0x3ecccccd    # 0.4f

    move-object/from16 v18, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v0, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v13, 0x60000

    .line 260
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v16, v12

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    invoke-interface {v0, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v12, 0x50000

    .line 264
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->DEFAULT_CAMERA_VALUE:Ljava/util/Map;

    .line 269
    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-interface {v1, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-interface {v1, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-interface {v1, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v18

    .line 276
    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x20100

    .line 279
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x20300

    .line 280
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x20400

    .line 281
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x20200

    .line 282
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x20b00

    .line 283
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x20500

    .line 284
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, v17

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x20600

    .line 285
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v4, v16

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x20700

    .line 286
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x20800

    .line 287
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x20900

    .line 288
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x20a00

    .line 289
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x20c00

    .line 290
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v5, 0x3e19999a    # 0.15f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x20d00

    .line 291
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x20e00

    .line 292
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v5, 0x3e19999a    # 0.15f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x20f00

    .line 293
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x21000

    .line 294
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x21600

    .line 295
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x30100

    .line 297
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x30200

    .line 298
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x30300

    .line 299
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x30900

    .line 300
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x30400

    .line 301
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x30500

    .line 302
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x30600

    .line 303
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x30700

    .line 304
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x30800

    .line 305
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x40100

    .line 308
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x40500

    .line 309
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x40200

    .line 310
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x40800

    .line 311
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x40700

    .line 312
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x40600

    .line 313
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x40400

    .line 314
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v0, 0x60000

    .line 317
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v0, 0x50000

    .line 321
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->DEFAULT_LIVE_VALUE:Ljava/util/Map;

    .line 496
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->STYLE_MAP:Ljava/util/HashMap;

    return-void

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e99999a    # 0.3f
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->mSavedItems:Ljava/util/Map;

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->mAIMakeUpSupport:Z

    return-void
.end method

.method private beautyNode(Lcom/transsion/camera/feature/mode/makeup/data/EffectType;)Ljava/lang/String;
    .locals 0

    .line 523
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;->CAMERA_ASIA:Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;->CAMERA_NOT_ASIA:Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->NODE_BEAUTY_LIVE:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->NODE_BEAUTY_CAMERA:Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method public static getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F
    .locals 1

    .line 168
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultMap(Lcom/transsion/camera/feature/mode/makeup/data/EffectType;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 169
    instance-of p1, p0, Ljava/lang/Float;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [F

    .line 170
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    aput p0, p1, v0

    return-object p1

    .line 171
    :cond_0
    instance-of p1, p0, [F

    if-eqz p1, :cond_1

    .line 172
    check-cast p0, [F

    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    return-object p0

    :cond_1
    new-array p0, v0, [F

    return-object p0
.end method

.method private static getDefaultMap(Lcom/transsion/camera/feature/mode/makeup/data/EffectType;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/feature/mode/makeup/data/EffectType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 179
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;->LIVE_ASIA:Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    .line 181
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager$2;->$SwitchMap$com$transsion$camera$feature$mode$makeup$data$EffectType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    .line 189
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->DEFAULT_CAMERA_VALUE:Ljava/util/Map;

    return-object p0

    .line 187
    :cond_1
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->DEFAULT_CAMERA_VALUE:Ljava/util/Map;

    return-object p0

    .line 184
    :cond_2
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->DEFAULT_LIVE_VALUE:Ljava/util/Map;

    return-object p0
.end method

.method private getFrontStyleMakeupItems(I)Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v3, "style_makeup/venus"

    const-string v4, "style_makeup/qianjin"

    const-string v5, "style_makeup/firstlove"

    const-string v11, "style_makeup/neptune"

    const-string v12, "style_makeup/nativemuscle"

    const-string v13, ""

    const/4 v15, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "Makeup_ALL"

    const-string v10, "Filter_ALL"

    const/high16 v2, 0x60000

    if-eq v1, v7, :cond_5

    const-string v7, "style_makeup/nude"

    if-eq v1, v6, :cond_3

    if-eq v1, v15, :cond_1

    .line 459
    iget-boolean v0, v0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->mAIMakeUpSupport:Z

    if-eqz v0, :cond_0

    .line 460
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    new-instance v4, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v15, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_no_effect:I

    sget v6, Lcom/transsion/camera/feature/makeup/R$string;->mu_item_no_effect:I

    new-instance v14, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-object/from16 p0, v0

    new-array v0, v8, [Ljava/lang/String;

    sget-object v8, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;->LIVE_ASIA:Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    move-object/from16 v16, v11

    .line 463
    invoke-static {v2, v8}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v11

    invoke-direct {v14, v13, v0, v11}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v0, -0x1

    invoke-direct {v4, v0, v15, v6, v14}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v0, 0x0

    aput-object v4, v1, v0

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v4, Lcom/transsion/camera/feature/makeup/R$drawable;->makeup_ai_effect:I

    sget v6, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_autoai:I

    new-instance v11, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v13

    .line 464
    invoke-static {v2, v8}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v14

    const-string v15, "style_makeup/zhigan"

    invoke-direct {v11, v15, v13, v14}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    const/16 v13, 0xb

    invoke-direct {v0, v13, v4, v6, v11}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v4, 0x1

    aput-object v0, v1, v4

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v4, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_firstlove:I

    sget v6, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_firstlove:I

    new-instance v11, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v13

    .line 465
    invoke-static {v2, v8}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v14

    invoke-direct {v11, v5, v13, v14}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v2, v4, v6, v11}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v4, 0x2

    aput-object v0, v1, v4

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v4, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_venus:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_venus:I

    new-instance v6, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v11

    .line 466
    invoke-static {v2, v8}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v13

    invoke-direct {v6, v3, v11, v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v2, v4, v5, v6}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x3

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_charmpurple:I

    sget v4, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_charmpurple:I

    new-instance v5, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v6

    .line 467
    invoke-static {v2, v8}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v11

    const-string v13, "style_makeup/charmpurple"

    invoke-direct {v5, v13, v6, v11}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x4

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_nude_color:I

    sget v4, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_nude:I

    new-instance v5, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v6

    .line 468
    invoke-static {v2, v8}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v11

    invoke-direct {v5, v7, v6, v11}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x5

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_light_nativemuscle:I

    sget v4, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_nativemuscle:I

    new-instance v5, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v6

    .line 469
    invoke-static {v2, v8}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v7

    invoke-direct {v5, v12, v6, v7}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x6

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_neptune:I

    sget v4, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_neptune:I

    new-instance v5, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v6

    .line 470
    invoke-static {v2, v8}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v7

    move-object/from16 v8, v16

    invoke-direct {v5, v8, v6, v7}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x7

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_restore:I

    sget v4, Lcom/transsion/camera/feature/makeup/R$string;->slimbody_preset_sure:I

    const/high16 v5, 0x70000

    invoke-direct {v0, v5, v3, v4}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(III)V

    const/16 v4, 0x8

    aput-object v0, v1, v4

    move-object/from16 v0, p0

    const/4 v6, 0x0

    invoke-direct {v0, v2, v1, v6}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(I[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;Z)V

    goto/16 :goto_0

    :cond_0
    move v6, v8

    move-object v8, v11

    const/16 v4, 0x8

    .line 476
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    new-array v1, v4, [Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    new-instance v4, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v11, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_no_effect:I

    sget v14, Lcom/transsion/camera/feature/makeup/R$string;->mu_item_no_effect:I

    new-instance v15, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-object/from16 p0, v0

    new-array v0, v6, [Ljava/lang/String;

    sget-object v6, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;->LIVE_ASIA:Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    move-object/from16 v16, v8

    .line 479
    invoke-static {v2, v6}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v8

    invoke-direct {v15, v13, v0, v8}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v0, -0x1

    invoke-direct {v4, v0, v11, v14, v15}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v0, 0x0

    aput-object v4, v1, v0

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v4, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_firstlove:I

    sget v8, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_firstlove:I

    new-instance v11, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v13

    .line 480
    invoke-static {v2, v6}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v14

    invoke-direct {v11, v5, v13, v14}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v2, v4, v8, v11}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v4, 0x1

    aput-object v0, v1, v4

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v4, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_venus:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_venus:I

    new-instance v8, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v11

    .line 481
    invoke-static {v2, v6}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v13

    invoke-direct {v8, v3, v11, v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v2, v4, v5, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x2

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_charmpurple:I

    sget v4, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_charmpurple:I

    new-instance v5, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v8

    .line 482
    invoke-static {v2, v6}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v11

    const-string v13, "style_makeup/charmpurple"

    invoke-direct {v5, v13, v8, v11}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x3

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_nude_color:I

    sget v4, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_nude:I

    new-instance v5, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v8

    .line 483
    invoke-static {v2, v6}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v11

    invoke-direct {v5, v7, v8, v11}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x4

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_light_nativemuscle:I

    sget v4, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_nativemuscle:I

    new-instance v5, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v7

    .line 484
    invoke-static {v2, v6}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v8

    invoke-direct {v5, v12, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x5

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_neptune:I

    sget v4, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_neptune:I

    new-instance v5, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v7

    .line 485
    invoke-static {v2, v6}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v6

    move-object/from16 v8, v16

    invoke-direct {v5, v8, v7, v6}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x6

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_restore:I

    sget v4, Lcom/transsion/camera/feature/makeup/R$string;->slimbody_preset_sure:I

    const/high16 v5, 0x70000

    invoke-direct {v0, v5, v3, v4}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(III)V

    const/4 v3, 0x7

    aput-object v0, v1, v3

    move-object/from16 v0, p0

    const/4 v6, 0x0

    invoke-direct {v0, v2, v1, v6}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(I[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;Z)V

    goto/16 :goto_0

    :cond_1
    move v6, v8

    move-object v8, v11

    .line 417
    iget-boolean v0, v0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->mAIMakeUpSupport:Z

    if-eqz v0, :cond_2

    .line 418
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    const/16 v1, 0xd

    new-array v1, v1, [Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    new-instance v11, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v14, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_no_effect:I

    sget v15, Lcom/transsion/camera/feature/makeup/R$string;->mu_item_no_effect:I

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-object/from16 p0, v0

    new-array v0, v6, [Ljava/lang/String;

    sget-object v6, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;->LIVE_ASIA:Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    const/high16 v3, 0x60000

    .line 421
    invoke-static {v3, v6}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v5

    invoke-direct {v2, v13, v0, v5}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v0, -0x1

    invoke-direct {v11, v0, v14, v15, v2}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v0, 0x0

    aput-object v11, v1, v0

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v2, Lcom/transsion/camera/feature/makeup/R$drawable;->makeup_ai_effect:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_autoai:I

    new-instance v11, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v13

    .line 422
    invoke-static {v3, v6}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v14

    const-string v15, "style_makeup/zhigan"

    invoke-direct {v11, v15, v13, v14}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    const/16 v13, 0xb

    invoke-direct {v0, v13, v2, v5, v11}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v2, 0x1

    aput-object v0, v1, v2

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v2, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_nude_color:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_nude:I

    new-instance v11, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v13

    .line 423
    invoke-static {v3, v6}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v14

    invoke-direct {v11, v7, v13, v14}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v3, v2, v5, v11}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v2, 0x2

    aput-object v0, v1, v2

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v2, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_charmpurple:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_charmpurple:I

    new-instance v7, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v11

    .line 424
    invoke-static {v3, v6}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v13

    const-string v14, "style_makeup/charmpurple"

    invoke-direct {v7, v14, v11, v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v3, v2, v5, v7}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v2, 0x3

    aput-object v0, v1, v2

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v2, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_black_peacockblue:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_peacockblue:I

    new-instance v7, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v11

    .line 425
    invoke-static {v3, v6}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v13

    const-string v14, "style_makeup/peacockblue"

    invoke-direct {v7, v14, v11, v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v3, v2, v5, v7}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v2, 0x4

    aput-object v0, v1, v2

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v2, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_brown_nativemuscle:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_nativemuscle:I

    new-instance v7, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v11

    .line 426
    invoke-static {v3, v6}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v13

    invoke-direct {v7, v12, v11, v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v3, v2, v5, v7}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v2, 0x5

    aput-object v0, v1, v2

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v2, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_brown_qianjin:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_qianjin:I

    new-instance v7, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v11

    .line 427
    invoke-static {v3, v6}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v12

    invoke-direct {v7, v4, v11, v12}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v3, v2, v5, v7}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v2, 0x6

    aput-object v0, v1, v2

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v2, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_neptune:I

    sget v4, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_neptune:I

    new-instance v5, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v7

    .line 428
    invoke-static {v3, v6}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v11

    invoke-direct {v5, v8, v7, v11}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v2, 0x7

    aput-object v0, v1, v2

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v2, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_brown_metrosexual:I

    sget v4, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_metrosexual:I

    new-instance v5, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v7

    .line 429
    invoke-static {v3, v6}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v8

    const-string v11, "style_makeup/metrosexual"

    invoke-direct {v5, v11, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/16 v2, 0x8

    aput-object v0, v1, v2

    const/16 v0, 0x9

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v4, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_ruby:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_ruby:I

    new-instance v7, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v8

    .line 430
    invoke-static {v3, v6}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v11

    const-string v12, "style_makeup/ruby"

    invoke-direct {v7, v12, v8, v11}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    aput-object v2, v1, v0

    const/16 v0, 0xa

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v4, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_firstlove:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_firstlove:I

    new-instance v7, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v8

    .line 431
    invoke-static {v3, v6}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v11

    move-object/from16 v14, v18

    invoke-direct {v7, v14, v8, v11}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    aput-object v2, v1, v0

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v2, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_venus:I

    sget v4, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_venus:I

    new-instance v5, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v7

    .line 432
    invoke-static {v3, v6}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v6

    move-object/from16 v11, v17

    invoke-direct {v5, v11, v7, v6}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/16 v2, 0xb

    aput-object v0, v1, v2

    const/16 v0, 0xc

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v4, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_restore:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$string;->slimbody_preset_sure:I

    const/high16 v6, 0x70000

    invoke-direct {v2, v6, v4, v5}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(III)V

    aput-object v2, v1, v0

    move-object/from16 v0, p0

    const/4 v2, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(I[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;Z)V

    goto/16 :goto_0

    :cond_2
    move-object v11, v3

    move-object v14, v5

    move v3, v2

    move v2, v6

    .line 438
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    new-instance v5, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_no_effect:I

    sget v15, Lcom/transsion/camera/feature/makeup/R$string;->mu_item_no_effect:I

    new-instance v3, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-object/from16 p0, v0

    new-array v0, v2, [Ljava/lang/String;

    sget-object v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;->LIVE_ASIA:Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    move-object/from16 v17, v11

    move-object/from16 v18, v14

    const/high16 v11, 0x60000

    .line 441
    invoke-static {v11, v2}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v14

    invoke-direct {v3, v13, v0, v14}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v0, -0x1

    invoke-direct {v5, v0, v6, v15, v3}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v0, 0x0

    aput-object v5, v1, v0

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_nude_color:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_nude:I

    new-instance v6, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v13

    .line 442
    invoke-static {v11, v2}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v14

    invoke-direct {v6, v7, v13, v14}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v11, v3, v5, v6}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x1

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_charmpurple:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_charmpurple:I

    new-instance v6, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v7

    .line 443
    invoke-static {v11, v2}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v13

    const-string v14, "style_makeup/charmpurple"

    invoke-direct {v6, v14, v7, v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v11, v3, v5, v6}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x2

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_black_peacockblue:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_peacockblue:I

    new-instance v6, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v7

    .line 444
    invoke-static {v11, v2}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v13

    const-string v14, "style_makeup/peacockblue"

    invoke-direct {v6, v14, v7, v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v11, v3, v5, v6}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x3

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_brown_nativemuscle:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_nativemuscle:I

    new-instance v6, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v7

    .line 445
    invoke-static {v11, v2}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v13

    invoke-direct {v6, v12, v7, v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v11, v3, v5, v6}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x4

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_brown_qianjin:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_qianjin:I

    new-instance v6, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v7

    .line 446
    invoke-static {v11, v2}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v12

    invoke-direct {v6, v4, v7, v12}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v11, v3, v5, v6}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x5

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_neptune:I

    sget v4, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_neptune:I

    new-instance v5, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v6

    .line 447
    invoke-static {v11, v2}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v7

    invoke-direct {v5, v8, v6, v7}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v11, v3, v4, v5}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x6

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_brown_metrosexual:I

    sget v4, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_metrosexual:I

    new-instance v5, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v6

    .line 448
    invoke-static {v11, v2}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v7

    const-string v8, "style_makeup/metrosexual"

    invoke-direct {v5, v8, v6, v7}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v11, v3, v4, v5}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x7

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_ruby:I

    sget v4, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_ruby:I

    new-instance v5, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v6

    .line 449
    invoke-static {v11, v2}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v7

    const-string v8, "style_makeup/ruby"

    invoke-direct {v5, v8, v6, v7}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v11, v3, v4, v5}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/16 v3, 0x8

    aput-object v0, v1, v3

    const/16 v0, 0x9

    new-instance v3, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v4, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_firstlove:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_firstlove:I

    new-instance v6, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v7

    .line 450
    invoke-static {v11, v2}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v8

    move-object/from16 v14, v18

    invoke-direct {v6, v14, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v3, v11, v4, v5, v6}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    aput-object v3, v1, v0

    const/16 v0, 0xa

    new-instance v3, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v4, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_venus:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_venus:I

    new-instance v6, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v7

    .line 451
    invoke-static {v11, v2}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v2

    move-object/from16 v15, v17

    invoke-direct {v6, v15, v7, v2}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v3, v11, v4, v5, v6}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    aput-object v3, v1, v0

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v2, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_restore:I

    sget v3, Lcom/transsion/camera/feature/makeup/R$string;->slimbody_preset_sure:I

    const/high16 v4, 0x70000

    invoke-direct {v0, v4, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(III)V

    const/16 v2, 0xb

    aput-object v0, v1, v2

    move-object/from16 v0, p0

    const/4 v2, 0x0

    invoke-direct {v0, v11, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(I[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;Z)V

    goto/16 :goto_0

    :cond_3
    move v2, v8

    move-object v8, v11

    .line 383
    iget-boolean v0, v0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->mAIMakeUpSupport:Z

    if-eqz v0, :cond_4

    .line 384
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    new-instance v3, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v5, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_no_effect:I

    sget v6, Lcom/transsion/camera/feature/makeup/R$string;->mu_item_no_effect:I

    new-instance v11, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    new-array v14, v2, [Ljava/lang/String;

    sget-object v15, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;->LIVE_ASIA:Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    move-object/from16 p0, v0

    const/high16 v2, 0x60000

    .line 387
    invoke-static {v2, v15}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v0

    invoke-direct {v11, v13, v14, v0}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v0, -0x1

    invoke-direct {v3, v0, v5, v6, v11}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v0, 0x0

    aput-object v3, v1, v0

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->makeup_ai_effect:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_autoai:I

    new-instance v6, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v11

    .line 388
    invoke-static {v2, v15}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v13

    const-string v14, "style_makeup/zhigan"

    invoke-direct {v6, v14, v11, v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    const/16 v11, 0xb

    invoke-direct {v0, v11, v3, v5, v6}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x1

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_black_nude_color:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_nude:I

    new-instance v6, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v11

    .line 389
    invoke-static {v2, v15}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v13

    invoke-direct {v6, v7, v11, v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v2, v3, v5, v6}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x2

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_black_charmpurple:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_charmpurple:I

    new-instance v6, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v7

    .line 390
    invoke-static {v2, v15}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v11

    const-string v13, "style_makeup/charmpurple"

    invoke-direct {v6, v13, v7, v11}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v2, v3, v5, v6}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x3

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_black_peacockblue:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_peacockblue:I

    new-instance v6, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v7

    .line 391
    invoke-static {v2, v15}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v11

    const-string v13, "style_makeup/peacockblue"

    invoke-direct {v6, v13, v7, v11}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v2, v3, v5, v6}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x4

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_black_nativemuscle:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_nativemuscle:I

    new-instance v6, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v7

    .line 392
    invoke-static {v2, v15}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v11

    invoke-direct {v6, v12, v7, v11}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v2, v3, v5, v6}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x5

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_black_qianjin:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_qianjin:I

    new-instance v6, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v7

    .line 393
    invoke-static {v2, v15}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v11

    invoke-direct {v6, v4, v7, v11}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v2, v3, v5, v6}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x6

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_black_neptune:I

    sget v4, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_neptune:I

    new-instance v5, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v6

    .line 394
    invoke-static {v2, v15}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v7

    invoke-direct {v5, v8, v6, v7}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x7

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_restore:I

    sget v4, Lcom/transsion/camera/feature/makeup/R$string;->slimbody_preset_sure:I

    const/high16 v5, 0x70000

    invoke-direct {v0, v5, v3, v4}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(III)V

    const/16 v3, 0x8

    aput-object v0, v1, v3

    move-object/from16 v0, p0

    const/4 v5, 0x0

    invoke-direct {v0, v2, v1, v5}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(I[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;Z)V

    goto/16 :goto_0

    :cond_4
    move v5, v2

    const/high16 v2, 0x60000

    const/16 v3, 0x8

    .line 400
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    new-array v1, v3, [Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    new-instance v3, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_no_effect:I

    sget v11, Lcom/transsion/camera/feature/makeup/R$string;->mu_item_no_effect:I

    new-instance v14, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    new-array v15, v5, [Ljava/lang/String;

    sget-object v5, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;->LIVE_ASIA:Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    move-object/from16 p0, v0

    .line 403
    invoke-static {v2, v5}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v0

    invoke-direct {v14, v13, v15, v0}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v0, -0x1

    invoke-direct {v3, v0, v6, v11, v14}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v0, 0x0

    aput-object v3, v1, v0

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_black_nude_color:I

    sget v6, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_nude:I

    new-instance v11, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v13

    .line 404
    invoke-static {v2, v5}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v14

    invoke-direct {v11, v7, v13, v14}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v2, v3, v6, v11}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x1

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_black_charmpurple:I

    sget v6, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_charmpurple:I

    new-instance v7, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v11

    .line 405
    invoke-static {v2, v5}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v13

    const-string v14, "style_makeup/charmpurple"

    invoke-direct {v7, v14, v11, v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v2, v3, v6, v7}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x2

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_black_peacockblue:I

    sget v6, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_peacockblue:I

    new-instance v7, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v11

    .line 406
    invoke-static {v2, v5}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v13

    const-string v14, "style_makeup/peacockblue"

    invoke-direct {v7, v14, v11, v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v2, v3, v6, v7}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x3

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_black_nativemuscle:I

    sget v6, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_nativemuscle:I

    new-instance v7, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v11

    .line 407
    invoke-static {v2, v5}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v13

    invoke-direct {v7, v12, v11, v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v2, v3, v6, v7}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x4

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_black_qianjin:I

    sget v6, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_qianjin:I

    new-instance v7, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v11

    .line 408
    invoke-static {v2, v5}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v12

    invoke-direct {v7, v4, v11, v12}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v2, v3, v6, v7}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x5

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_black_neptune:I

    sget v4, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_neptune:I

    new-instance v6, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v7

    .line 409
    invoke-static {v2, v5}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v5

    invoke-direct {v6, v8, v7, v5}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v0, v2, v3, v4, v6}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x6

    aput-object v0, v1, v3

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_restore:I

    sget v4, Lcom/transsion/camera/feature/makeup/R$string;->slimbody_preset_sure:I

    const/high16 v5, 0x70000

    invoke-direct {v0, v5, v3, v4}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(III)V

    const/4 v3, 0x7

    aput-object v0, v1, v3

    move-object/from16 v0, p0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(I[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;Z)V

    goto/16 :goto_0

    :cond_5
    move-object v15, v3

    move-object v14, v5

    move v3, v8

    move-object v8, v11

    .line 349
    iget-boolean v0, v0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->mAIMakeUpSupport:Z

    if-eqz v0, :cond_6

    .line 350
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v5, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_no_effect:I

    sget v6, Lcom/transsion/camera/feature/makeup/R$string;->mu_item_no_effect:I

    new-instance v7, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    new-array v11, v3, [Ljava/lang/String;

    sget-object v3, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;->LIVE_ASIA:Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    move-object/from16 p0, v0

    move-object/from16 v17, v15

    const/high16 v0, 0x60000

    .line 353
    invoke-static {v0, v3}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v15

    invoke-direct {v7, v13, v11, v15}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v11, -0x1

    invoke-direct {v2, v11, v5, v6, v7}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v5, 0x0

    aput-object v2, v1, v5

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v5, Lcom/transsion/camera/feature/makeup/R$drawable;->makeup_ai_effect:I

    sget v6, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_autoai:I

    new-instance v7, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v11

    .line 354
    invoke-static {v0, v3}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v13

    const-string v15, "style_makeup/zhigan"

    invoke-direct {v7, v15, v11, v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    const/16 v11, 0xb

    invoke-direct {v2, v11, v5, v6, v7}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v5, 0x1

    aput-object v2, v1, v5

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v5, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_brown_nativemuscle:I

    sget v6, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_nativemuscle:I

    new-instance v7, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v11

    .line 355
    invoke-static {v0, v3}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v13

    invoke-direct {v7, v12, v11, v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v2, v0, v5, v6, v7}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v5, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_brown_metrosexual:I

    sget v6, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_metrosexual:I

    new-instance v7, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v11

    .line 356
    invoke-static {v0, v3}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v12

    const-string v13, "style_makeup/metrosexual"

    invoke-direct {v7, v13, v11, v12}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v2, v0, v5, v6, v7}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v5, 0x3

    aput-object v2, v1, v5

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v5, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_neptune:I

    sget v6, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_neptune:I

    new-instance v7, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v11

    .line 357
    invoke-static {v0, v3}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v12

    invoke-direct {v7, v8, v11, v12}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v2, v0, v5, v6, v7}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v5, 0x4

    aput-object v2, v1, v5

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v5, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_firstlove:I

    sget v6, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_firstlove:I

    new-instance v7, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v8

    .line 358
    invoke-static {v0, v3}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v11

    invoke-direct {v7, v14, v8, v11}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v2, v0, v5, v6, v7}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v5, 0x5

    aput-object v2, v1, v5

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v5, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_brown_qianjin:I

    sget v6, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_qianjin:I

    new-instance v7, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v8

    .line 359
    invoke-static {v0, v3}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v11

    invoke-direct {v7, v4, v8, v11}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v2, v0, v5, v6, v7}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v4, 0x6

    aput-object v2, v1, v4

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v4, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_brown_venus:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_venus:I

    new-instance v6, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v7

    .line 360
    invoke-static {v0, v3}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v3

    move-object/from16 v11, v17

    invoke-direct {v6, v11, v7, v3}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v2, v0, v4, v5, v6}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_restore:I

    sget v4, Lcom/transsion/camera/feature/makeup/R$string;->slimbody_preset_sure:I

    const/high16 v5, 0x70000

    invoke-direct {v2, v5, v3, v4}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(III)V

    const/16 v3, 0x8

    aput-object v2, v1, v3

    move-object/from16 v2, p0

    const/4 v5, 0x0

    invoke-direct {v2, v0, v1, v5}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(I[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;Z)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_6
    move v5, v3

    move-object v11, v15

    const/high16 v0, 0x60000

    const/16 v3, 0x8

    .line 366
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    new-array v2, v3, [Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    new-instance v3, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v6, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_no_effect:I

    sget v7, Lcom/transsion/camera/feature/makeup/R$string;->mu_item_no_effect:I

    new-instance v15, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-object/from16 p0, v1

    new-array v1, v5, [Ljava/lang/String;

    sget-object v5, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;->LIVE_ASIA:Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    move-object/from16 v17, v11

    .line 369
    invoke-static {v0, v5}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v11

    invoke-direct {v15, v13, v1, v11}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    const/4 v1, -0x1

    invoke-direct {v3, v1, v6, v7, v15}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v1, 0x0

    aput-object v3, v2, v1

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_brown_nativemuscle:I

    sget v6, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_nativemuscle:I

    new-instance v7, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v11

    .line 370
    invoke-static {v0, v5}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v13

    invoke-direct {v7, v12, v11, v13}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v1, v0, v3, v6, v7}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x1

    aput-object v1, v2, v3

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_brown_metrosexual:I

    sget v6, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_metrosexual:I

    new-instance v7, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v11

    .line 371
    invoke-static {v0, v5}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v12

    const-string v13, "style_makeup/metrosexual"

    invoke-direct {v7, v13, v11, v12}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v1, v0, v3, v6, v7}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x2

    aput-object v1, v2, v3

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_neptune:I

    sget v6, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_neptune:I

    new-instance v7, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v11

    .line 372
    invoke-static {v0, v5}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v12

    invoke-direct {v7, v8, v11, v12}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v1, v0, v3, v6, v7}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x3

    aput-object v1, v2, v3

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_firstlove:I

    sget v6, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_firstlove:I

    new-instance v7, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v8

    .line 373
    invoke-static {v0, v5}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v11

    invoke-direct {v7, v14, v8, v11}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v1, v0, v3, v6, v7}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x4

    aput-object v1, v2, v3

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_brown_qianjin:I

    sget v6, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_qianjin:I

    new-instance v7, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v8

    .line 374
    invoke-static {v0, v5}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v11

    invoke-direct {v7, v4, v8, v11}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v1, v0, v3, v6, v7}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x5

    aput-object v1, v2, v3

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_brown_venus:I

    sget v4, Lcom/transsion/camera/feature/makeup/R$string;->style_makeup_venus:I

    new-instance v6, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v7

    .line 375
    invoke-static {v0, v5}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object v5

    move-object/from16 v8, v17

    invoke-direct {v6, v8, v7, v5}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    invoke-direct {v1, v0, v3, v4, v6}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V

    const/4 v3, 0x6

    aput-object v1, v2, v3

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->mu_restore:I

    sget v4, Lcom/transsion/camera/feature/makeup/R$string;->slimbody_preset_sure:I

    const/high16 v5, 0x70000

    invoke-direct {v1, v5, v3, v4}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(III)V

    const/4 v3, 0x7

    aput-object v1, v2, v3

    move-object/from16 v1, p0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;-><init>(I[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;Z)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static getIndexByPath(Ljava/lang/String;)I
    .locals 2

    .line 515
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->STYLE_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private reshapeNode(Lcom/transsion/camera/feature/mode/makeup/data/EffectType;)Ljava/lang/String;
    .locals 0

    .line 527
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;->CAMERA_ASIA:Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;->CAMERA_NOT_ASIA:Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->NODE_RESHAPE_LIVE:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->NODE_RESHAPE_CAMERA:Ljava/lang/String;

    :goto_1
    return-object p0
.end method


# virtual methods
.method public generateComposerNodesAndTags(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)[[Ljava/lang/String;
    .locals 5

    const/4 p0, 0x1

    new-array v0, p0, [Ljava/lang/String;

    new-array v1, p0, [Ljava/lang/String;

    const-string v2, ""

    if-eqz p1, :cond_1

    .line 161
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    :goto_0
    move-object v3, v2

    :goto_1
    const/4 v4, 0x0

    aput-object v3, v0, v4

    if-eqz p1, :cond_3

    .line 162
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getTag()Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_2
    aput-object v2, v1, v4

    const/4 p1, 0x2

    new-array p1, p1, [[Ljava/lang/String;

    aput-object v0, p1, v4

    aput-object v1, p1, p0

    return-object p1
.end method

.method public generateComposerNodesAndTags(Ljava/util/Set;)[[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;",
            ">;)[[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 138
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 140
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    .line 141
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 148
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 149
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 150
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    .line 151
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x2

    new-array p0, p0, [[Ljava/lang/String;

    aput-object p1, p0, v1

    const/4 p1, 0x1

    aput-object v0, p0, p1

    return-object p0
.end method

.method public getItem(IILcom/transsion/camera/feature/mode/makeup/data/EffectType;)Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;
    .locals 3

    .line 326
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "effect type ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 327
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->mSavedItems:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    if-eqz p3, :cond_0

    return-object p3

    :cond_0
    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    .line 336
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getFrontStyleMakeupItems(I)Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object p2

    goto :goto_0

    .line 333
    :cond_1
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getFrontStyleMakeupItems(I)Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    .line 340
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->mSavedItems:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p2
.end method

.method public resetItem(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;Lcom/transsion/camera/feature/mode/makeup/data/EffectType;)V
    .locals 5

    .line 193
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getChildren()[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getChildren()[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 195
    invoke-virtual {p0, v4, p2}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->resetItem(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;Lcom/transsion/camera/feature/mode/makeup/data/EffectType;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 198
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->setSelectChild(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V

    .line 199
    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->setSelected(Z)V

    .line 200
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getId()I

    move-result p0

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getDefaultIntensity(ILcom/transsion/camera/feature/mode/makeup/data/EffectType;)[F

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->setIntensityArray([F)V

    return-void
.end method
