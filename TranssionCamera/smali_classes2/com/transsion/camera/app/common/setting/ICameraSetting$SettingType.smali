.class public final enum Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
.super Ljava/lang/Enum;
.source "ICameraSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/setting/ICameraSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

.field public static final enum PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

.field public static final enum PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

.field public static final enum VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 22
    new-instance v0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    const-string v1, "PHOTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    .line 23
    new-instance v1, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    const-string v3, "VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    .line 24
    new-instance v3, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    const-string v5, "PHOTO_AND_VIDEO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 21
    sput-object v5, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->$VALUES:[Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 1

    .line 21
    const-class v0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 1

    .line 21
    sget-object v0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->$VALUES:[Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object v0
.end method
