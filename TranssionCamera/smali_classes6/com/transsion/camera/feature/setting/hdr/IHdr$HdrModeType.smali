.class public final enum Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;
.super Ljava/lang/Enum;
.source "IHdr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/hdr/IHdr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HdrModeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

.field public static final enum MVHDR_PHOTP:Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

.field public static final enum MVHDR_VIDEO:Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

.field public static final enum NONVHDR_PHOTO:Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

.field public static final enum NONVHDR_VIDEO:Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

.field public static final enum SCENE_MODE_DEFAULT:Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

.field public static final enum ZVHDR_PHOTO:Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

.field public static final enum ZVHDR_VIDEO:Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 12
    new-instance v0, Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

    const-string v1, "SCENE_MODE_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;->SCENE_MODE_DEFAULT:Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

    .line 13
    new-instance v1, Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

    const-string v3, "ZVHDR_PHOTO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;->ZVHDR_PHOTO:Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

    .line 14
    new-instance v3, Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

    const-string v5, "MVHDR_PHOTP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;->MVHDR_PHOTP:Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

    .line 15
    new-instance v5, Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

    const-string v7, "NONVHDR_PHOTO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;->NONVHDR_PHOTO:Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

    .line 16
    new-instance v7, Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

    const-string v9, "ZVHDR_VIDEO"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;->ZVHDR_VIDEO:Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

    .line 17
    new-instance v9, Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

    const-string v11, "MVHDR_VIDEO"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;->MVHDR_VIDEO:Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

    .line 18
    new-instance v11, Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

    const-string v13, "NONVHDR_VIDEO"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;->NONVHDR_VIDEO:Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 11
    sput-object v13, Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;->$VALUES:[Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;
    .locals 1

    .line 11
    const-class v0, Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;
    .locals 1

    .line 11
    sget-object v0, Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;->$VALUES:[Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/setting/hdr/IHdr$HdrModeType;

    return-object v0
.end method
