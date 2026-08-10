.class public final enum Lcom/singleblur/faceapi/model/ResultCode;
.super Ljava/lang/Enum;
.source "ResultCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/singleblur/faceapi/model/ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/singleblur/faceapi/model/ResultCode;

.field private static final DESCRIPTION_E_ACTIVE_CODE_INVALID:Ljava/lang/String; = "invalid active code"

.field private static final DESCRIPTION_E_ACTIVE_FAIL:Ljava/lang/String; = "license active failed"

.field private static final DESCRIPTION_E_AUTH_EXPIRE:Ljava/lang/String; = "date expired"

.field private static final DESCRIPTION_E_DELNOTFOUND:Ljava/lang/String; = "define not found"

.field private static final DESCRIPTION_E_FAIL:Ljava/lang/String; = "run in fail inside"

.field private static final DESCRIPTION_E_FILE_EXPIRE:Ljava/lang/String; = "model out of date"

.field private static final DESCRIPTION_E_FILE_NOT_FOUND:Ljava/lang/String; = "file no found"

.field private static final DESCRIPTION_E_HANDLE:Ljava/lang/String; = "handle Error,may be cause by sdk out of date or model file incorrect"

.field private static final DESCRIPTION_E_INVALIDARG:Ljava/lang/String; = "invalid argument"

.field private static final DESCRIPTION_E_INVALID_APPID:Ljava/lang/String; = "invalid appid"

.field private static final DESCRIPTION_E_INVALID_AUTH:Ljava/lang/String; = "invalid license"

.field private static final DESCRIPTION_E_INVALID_FILE_FORMAT:Ljava/lang/String; = "model format error"

.field private static final DESCRIPTION_E_INVALID_PIXEL_FORMAT:Ljava/lang/String; = "invalid pixel format"

.field private static final DESCRIPTION_E_LICENSE_IS_NOT_ACTIVABLE:Ljava/lang/String; = "invalid active code"

.field private static final DESCRIPTION_E_MISSLICENSE:Ljava/lang/String; = "con\'t find license"

.field private static final DESCRIPTION_E_MULTI_CALLS:Ljava/lang/String; = "multi calls init license"

.field private static final DESCRIPTION_E_ONLINE_AUTH_CONNECT_FAIL:Ljava/lang/String; = "online auth connect fail"

.field private static final DESCRIPTION_E_ONLINE_AUTH_INVALID:Ljava/lang/String; = "check online fail"

.field private static final DESCRIPTION_E_ONLINE_AUTH_TIMEOUT:Ljava/lang/String; = "check online timeout"

.field private static final DESCRIPTION_E_OUTOFMEMORY:Ljava/lang/String; = "out of memory"

.field private static final DESCRIPTION_E_UNSUPPORTED:Ljava/lang/String; = "unsupport function called"

.field private static final DESCRIPTION_E_UUID_MISMATCH:Ljava/lang/String; = "uuid mismatch"

.field private static final DESCRIPTION_OK:Ljava/lang/String; = "OK"

.field public static final enum E_ACTIVE_CODE_INVALID:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_ACTIVE_FAIL:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_AUTH_EXPIRE:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_DELNOTFOUND:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_FAIL:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_FILE_EXPIRE:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_FILE_NOT_FOUND:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_HANDLE:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_INVALIDARG:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_INVALID_APPID:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_INVALID_AUTH:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_INVALID_FILE_FORMAT:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_INVALID_PIXEL_FORMAT:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_LICENSE_IS_NOT_ACTIVABLE:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_MISSLICENSE:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_MULTI_CALLS:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_ONLINE_AUTH_CONNECT_FAIL:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_ONLINE_AUTH_INVALID:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_ONLINE_AUTH_TIMEOUT:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_OUTOFMEMORY:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_UNSUPPORTED:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_UUID_MISMATCH:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum OK:Lcom/singleblur/faceapi/model/ResultCode;


# instance fields
.field private final resultCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 8
    new-instance v0, Lcom/singleblur/faceapi/model/ResultCode;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ResultCode;->OK:Lcom/singleblur/faceapi/model/ResultCode;

    .line 13
    new-instance v1, Lcom/singleblur/faceapi/model/ResultCode;

    const-string v3, "E_INVALIDARG"

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-direct {v1, v3, v4, v5}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/singleblur/faceapi/model/ResultCode;->E_INVALIDARG:Lcom/singleblur/faceapi/model/ResultCode;

    .line 18
    new-instance v3, Lcom/singleblur/faceapi/model/ResultCode;

    const-string v5, "E_HANDLE"

    const/4 v6, 0x2

    const/4 v7, -0x2

    invoke-direct {v3, v5, v6, v7}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/singleblur/faceapi/model/ResultCode;->E_HANDLE:Lcom/singleblur/faceapi/model/ResultCode;

    .line 23
    new-instance v5, Lcom/singleblur/faceapi/model/ResultCode;

    const-string v7, "E_OUTOFMEMORY"

    const/4 v8, 0x3

    const/4 v9, -0x3

    invoke-direct {v5, v7, v8, v9}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/singleblur/faceapi/model/ResultCode;->E_OUTOFMEMORY:Lcom/singleblur/faceapi/model/ResultCode;

    .line 28
    new-instance v7, Lcom/singleblur/faceapi/model/ResultCode;

    const-string v9, "E_FAIL"

    const/4 v10, 0x4

    const/4 v11, -0x4

    invoke-direct {v7, v9, v10, v11}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/singleblur/faceapi/model/ResultCode;->E_FAIL:Lcom/singleblur/faceapi/model/ResultCode;

    .line 33
    new-instance v9, Lcom/singleblur/faceapi/model/ResultCode;

    const-string v11, "E_DELNOTFOUND"

    const/4 v12, 0x5

    const/4 v13, -0x5

    invoke-direct {v9, v11, v12, v13}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/singleblur/faceapi/model/ResultCode;->E_DELNOTFOUND:Lcom/singleblur/faceapi/model/ResultCode;

    .line 39
    new-instance v11, Lcom/singleblur/faceapi/model/ResultCode;

    const-string v13, "E_INVALID_PIXEL_FORMAT"

    const/4 v14, 0x6

    const/4 v15, -0x6

    invoke-direct {v11, v13, v14, v15}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/singleblur/faceapi/model/ResultCode;->E_INVALID_PIXEL_FORMAT:Lcom/singleblur/faceapi/model/ResultCode;

    .line 44
    new-instance v13, Lcom/singleblur/faceapi/model/ResultCode;

    const-string v15, "E_FILE_NOT_FOUND"

    const/4 v14, 0x7

    const/4 v12, -0x7

    invoke-direct {v13, v15, v14, v12}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/singleblur/faceapi/model/ResultCode;->E_FILE_NOT_FOUND:Lcom/singleblur/faceapi/model/ResultCode;

    .line 49
    new-instance v12, Lcom/singleblur/faceapi/model/ResultCode;

    const-string v15, "E_INVALID_FILE_FORMAT"

    const/16 v14, 0x8

    const/4 v10, -0x8

    invoke-direct {v12, v15, v14, v10}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/singleblur/faceapi/model/ResultCode;->E_INVALID_FILE_FORMAT:Lcom/singleblur/faceapi/model/ResultCode;

    .line 54
    new-instance v10, Lcom/singleblur/faceapi/model/ResultCode;

    const-string v15, "E_FILE_EXPIRE"

    const/16 v14, 0x9

    const/16 v8, -0x9

    invoke-direct {v10, v15, v14, v8}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/singleblur/faceapi/model/ResultCode;->E_FILE_EXPIRE:Lcom/singleblur/faceapi/model/ResultCode;

    .line 59
    new-instance v8, Lcom/singleblur/faceapi/model/ResultCode;

    const-string v15, "E_INVALID_AUTH"

    const/16 v14, 0xa

    const/16 v6, -0xd

    invoke-direct {v8, v15, v14, v6}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/singleblur/faceapi/model/ResultCode;->E_INVALID_AUTH:Lcom/singleblur/faceapi/model/ResultCode;

    .line 64
    new-instance v6, Lcom/singleblur/faceapi/model/ResultCode;

    const-string v15, "E_INVALID_APPID"

    const/16 v14, 0xb

    const/16 v4, -0xe

    invoke-direct {v6, v15, v14, v4}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/singleblur/faceapi/model/ResultCode;->E_INVALID_APPID:Lcom/singleblur/faceapi/model/ResultCode;

    .line 69
    new-instance v4, Lcom/singleblur/faceapi/model/ResultCode;

    const-string v15, "E_AUTH_EXPIRE"

    const/16 v14, 0xc

    const/16 v2, -0xf

    invoke-direct {v4, v15, v14, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/singleblur/faceapi/model/ResultCode;->E_AUTH_EXPIRE:Lcom/singleblur/faceapi/model/ResultCode;

    .line 74
    new-instance v2, Lcom/singleblur/faceapi/model/ResultCode;

    const-string v15, "E_UUID_MISMATCH"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const/16 v4, -0x10

    invoke-direct {v2, v15, v14, v4}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/singleblur/faceapi/model/ResultCode;->E_UUID_MISMATCH:Lcom/singleblur/faceapi/model/ResultCode;

    .line 79
    new-instance v4, Lcom/singleblur/faceapi/model/ResultCode;

    const-string v15, "E_ONLINE_AUTH_CONNECT_FAIL"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const/16 v2, -0x11

    invoke-direct {v4, v15, v14, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/singleblur/faceapi/model/ResultCode;->E_ONLINE_AUTH_CONNECT_FAIL:Lcom/singleblur/faceapi/model/ResultCode;

    .line 84
    new-instance v2, Lcom/singleblur/faceapi/model/ResultCode;

    const-string v15, "E_ONLINE_AUTH_TIMEOUT"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const/16 v4, -0x12

    invoke-direct {v2, v15, v14, v4}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/singleblur/faceapi/model/ResultCode;->E_ONLINE_AUTH_TIMEOUT:Lcom/singleblur/faceapi/model/ResultCode;

    .line 89
    new-instance v4, Lcom/singleblur/faceapi/model/ResultCode;

    const-string v15, "E_ONLINE_AUTH_INVALID"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const/16 v2, -0x13

    invoke-direct {v4, v15, v14, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/singleblur/faceapi/model/ResultCode;->E_ONLINE_AUTH_INVALID:Lcom/singleblur/faceapi/model/ResultCode;

    .line 94
    new-instance v2, Lcom/singleblur/faceapi/model/ResultCode;

    const-string v15, "E_LICENSE_IS_NOT_ACTIVABLE"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const/16 v4, -0x14

    invoke-direct {v2, v15, v14, v4}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/singleblur/faceapi/model/ResultCode;->E_LICENSE_IS_NOT_ACTIVABLE:Lcom/singleblur/faceapi/model/ResultCode;

    .line 99
    new-instance v4, Lcom/singleblur/faceapi/model/ResultCode;

    const-string v15, "E_ACTIVE_FAIL"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const/16 v2, -0x15

    invoke-direct {v4, v15, v14, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/singleblur/faceapi/model/ResultCode;->E_ACTIVE_FAIL:Lcom/singleblur/faceapi/model/ResultCode;

    .line 104
    new-instance v2, Lcom/singleblur/faceapi/model/ResultCode;

    const-string v15, "E_ACTIVE_CODE_INVALID"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const/16 v4, -0x16

    invoke-direct {v2, v15, v14, v4}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/singleblur/faceapi/model/ResultCode;->E_ACTIVE_CODE_INVALID:Lcom/singleblur/faceapi/model/ResultCode;

    .line 109
    new-instance v4, Lcom/singleblur/faceapi/model/ResultCode;

    const-string v15, "E_UNSUPPORTED"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const/16 v2, -0x3e8

    invoke-direct {v4, v15, v14, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/singleblur/faceapi/model/ResultCode;->E_UNSUPPORTED:Lcom/singleblur/faceapi/model/ResultCode;

    .line 114
    new-instance v2, Lcom/singleblur/faceapi/model/ResultCode;

    const-string v15, "E_MISSLICENSE"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const/16 v4, -0x3e9

    invoke-direct {v2, v15, v14, v4}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/singleblur/faceapi/model/ResultCode;->E_MISSLICENSE:Lcom/singleblur/faceapi/model/ResultCode;

    .line 119
    new-instance v4, Lcom/singleblur/faceapi/model/ResultCode;

    const-string v15, "E_MULTI_CALLS"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const/16 v2, -0x3ea

    invoke-direct {v4, v15, v14, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/singleblur/faceapi/model/ResultCode;->E_MULTI_CALLS:Lcom/singleblur/faceapi/model/ResultCode;

    const/16 v2, 0x17

    new-array v2, v2, [Lcom/singleblur/faceapi/model/ResultCode;

    const/4 v14, 0x0

    aput-object v0, v2, v14

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v4, v2, v0

    .line 3
    sput-object v2, Lcom/singleblur/faceapi/model/ResultCode;->$VALUES:[Lcom/singleblur/faceapi/model/ResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 124
    iput p3, p0, Lcom/singleblur/faceapi/model/ResultCode;->resultCode:I

    return-void
.end method

.method public static getDescription(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "invalid active code"

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "OK"

    return-object p0

    :pswitch_1
    const-string p0, "invalid argument"

    return-object p0

    :pswitch_2
    const-string p0, "handle Error,may be cause by sdk out of date or model file incorrect"

    return-object p0

    :pswitch_3
    const-string p0, "out of memory"

    return-object p0

    :pswitch_4
    const-string p0, "run in fail inside"

    return-object p0

    :pswitch_5
    const-string p0, "define not found"

    return-object p0

    :pswitch_6
    const-string p0, "invalid pixel format"

    return-object p0

    :pswitch_7
    const-string p0, "file no found"

    return-object p0

    :pswitch_8
    const-string p0, "model format error"

    return-object p0

    :pswitch_9
    const-string p0, "model out of date"

    return-object p0

    :pswitch_a
    const-string p0, "invalid license"

    return-object p0

    :pswitch_b
    const-string p0, "invalid appid"

    return-object p0

    :pswitch_c
    const-string p0, "date expired"

    return-object p0

    :pswitch_d
    const-string p0, "uuid mismatch"

    return-object p0

    :pswitch_e
    const-string p0, "online auth connect fail"

    return-object p0

    :pswitch_f
    const-string p0, "check online timeout"

    return-object p0

    :pswitch_10
    const-string p0, "check online fail"

    return-object p0

    :pswitch_11
    return-object v0

    :pswitch_12
    const-string p0, "license active failed"

    return-object p0

    :pswitch_13
    return-object v0

    :pswitch_14
    const-string p0, "unsupport function called"

    return-object p0

    :pswitch_15
    const-string p0, "con\'t find license"

    return-object p0

    :pswitch_16
    const-string p0, "multi calls init license"

    return-object p0

    :pswitch_data_0
    .packed-switch -0x3ea
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x16
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/singleblur/faceapi/model/ResultCode;
    .locals 1

    .line 3
    const-class v0, Lcom/singleblur/faceapi/model/ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/singleblur/faceapi/model/ResultCode;

    return-object p0
.end method

.method public static values()[Lcom/singleblur/faceapi/model/ResultCode;
    .locals 1

    .line 3
    sget-object v0, Lcom/singleblur/faceapi/model/ResultCode;->$VALUES:[Lcom/singleblur/faceapi/model/ResultCode;

    invoke-virtual {v0}, [Lcom/singleblur/faceapi/model/ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/singleblur/faceapi/model/ResultCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 128
    iget p0, p0, Lcom/singleblur/faceapi/model/ResultCode;->resultCode:I

    return p0
.end method
