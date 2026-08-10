.class final enum Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;
.super Ljava/lang/Enum;
.source "ExposureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/exposure/ExposureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LayoutDirect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;

.field public static final enum LEFT:Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;

.field public static final enum RIGHT:Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 259
    new-instance v0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;->LEFT:Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;

    new-instance v1, Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;

    const-string v3, "RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;->RIGHT:Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 258
    sput-object v3, Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;->$VALUES:[Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 258
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;
    .locals 1

    .line 258
    const-class v0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;
    .locals 1

    .line 258
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;->$VALUES:[Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;

    invoke-virtual {v0}, [Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;

    return-object v0
.end method
