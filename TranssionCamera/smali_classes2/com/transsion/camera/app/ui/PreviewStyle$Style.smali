.class public final enum Lcom/transsion/camera/app/ui/PreviewStyle$Style;
.super Ljava/lang/Enum;
.source "PreviewStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/PreviewStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/app/ui/PreviewStyle$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/ui/PreviewStyle$Style;

.field public static final enum HEIGHT_FULL:Lcom/transsion/camera/app/ui/PreviewStyle$Style;

.field public static final enum WIDTH_FULL:Lcom/transsion/camera/app/ui/PreviewStyle$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 54
    new-instance v0, Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    const-string v1, "WIDTH_FULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/PreviewStyle$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/PreviewStyle$Style;->WIDTH_FULL:Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    .line 55
    new-instance v1, Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    const-string v3, "HEIGHT_FULL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/app/ui/PreviewStyle$Style;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/app/ui/PreviewStyle$Style;->HEIGHT_FULL:Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 53
    sput-object v3, Lcom/transsion/camera/app/ui/PreviewStyle$Style;->$VALUES:[Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/ui/PreviewStyle$Style;
    .locals 1

    .line 53
    const-class v0, Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/ui/PreviewStyle$Style;
    .locals 1

    .line 53
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewStyle$Style;->$VALUES:[Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/ui/PreviewStyle$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    return-object v0
.end method
