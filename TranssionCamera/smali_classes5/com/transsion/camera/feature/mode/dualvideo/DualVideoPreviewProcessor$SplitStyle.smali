.class public final enum Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;
.super Ljava/lang/Enum;
.source "DualVideoPreviewProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SplitStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;

.field public static final enum STYLE_PIP:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;

.field public static final enum STYLE_UP_DOWN:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 121
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;

    const-string v1, "STYLE_UP_DOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;->STYLE_UP_DOWN:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;

    .line 122
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;

    const-string v3, "STYLE_PIP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;->STYLE_PIP:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 120
    sput-object v3, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;->$VALUES:[Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;
    .locals 1

    .line 120
    const-class v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;
    .locals 1

    .line 120
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;->$VALUES:[Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;

    return-object v0
.end method
