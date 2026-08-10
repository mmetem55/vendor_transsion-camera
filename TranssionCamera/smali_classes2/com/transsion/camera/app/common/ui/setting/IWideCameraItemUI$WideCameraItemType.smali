.class public final enum Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;
.super Ljava/lang/Enum;
.source "IWideCameraItemUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WideCameraItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

.field public static final enum TYPE_IMAGE:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

.field public static final enum TYPE_TEXT:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    const-string v1, "TYPE_TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->TYPE_TEXT:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    .line 16
    new-instance v1, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    const-string v3, "TYPE_IMAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->TYPE_IMAGE:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 14
    sput-object v3, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->$VALUES:[Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;
    .locals 1

    .line 14
    const-class v0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;
    .locals 1

    .line 14
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->$VALUES:[Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    return-object v0
.end method
