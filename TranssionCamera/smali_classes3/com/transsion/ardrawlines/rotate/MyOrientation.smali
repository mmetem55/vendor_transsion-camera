.class public final enum Lcom/transsion/ardrawlines/rotate/MyOrientation;
.super Ljava/lang/Enum;
.source "MyOrientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/ardrawlines/rotate/MyOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/ardrawlines/rotate/MyOrientation;

.field public static final enum LANDSCAPE:Lcom/transsion/ardrawlines/rotate/MyOrientation;

.field public static final enum LANDSCAPE_REVERSE:Lcom/transsion/ardrawlines/rotate/MyOrientation;

.field public static final enum PORTRAIT:Lcom/transsion/ardrawlines/rotate/MyOrientation;

.field public static final enum PORTRAIT_REVERSE:Lcom/transsion/ardrawlines/rotate/MyOrientation;


# direct methods
.method private static synthetic $values()[Lcom/transsion/ardrawlines/rotate/MyOrientation;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/transsion/ardrawlines/rotate/MyOrientation;

    .line 3
    sget-object v1, Lcom/transsion/ardrawlines/rotate/MyOrientation;->PORTRAIT:Lcom/transsion/ardrawlines/rotate/MyOrientation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ardrawlines/rotate/MyOrientation;->LANDSCAPE:Lcom/transsion/ardrawlines/rotate/MyOrientation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ardrawlines/rotate/MyOrientation;->PORTRAIT_REVERSE:Lcom/transsion/ardrawlines/rotate/MyOrientation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ardrawlines/rotate/MyOrientation;->LANDSCAPE_REVERSE:Lcom/transsion/ardrawlines/rotate/MyOrientation;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/transsion/ardrawlines/rotate/MyOrientation;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/ardrawlines/rotate/MyOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/ardrawlines/rotate/MyOrientation;->PORTRAIT:Lcom/transsion/ardrawlines/rotate/MyOrientation;

    new-instance v0, Lcom/transsion/ardrawlines/rotate/MyOrientation;

    const-string v1, "LANDSCAPE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/ardrawlines/rotate/MyOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/ardrawlines/rotate/MyOrientation;->LANDSCAPE:Lcom/transsion/ardrawlines/rotate/MyOrientation;

    new-instance v0, Lcom/transsion/ardrawlines/rotate/MyOrientation;

    const-string v1, "PORTRAIT_REVERSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/ardrawlines/rotate/MyOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/ardrawlines/rotate/MyOrientation;->PORTRAIT_REVERSE:Lcom/transsion/ardrawlines/rotate/MyOrientation;

    new-instance v0, Lcom/transsion/ardrawlines/rotate/MyOrientation;

    const-string v1, "LANDSCAPE_REVERSE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/ardrawlines/rotate/MyOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/ardrawlines/rotate/MyOrientation;->LANDSCAPE_REVERSE:Lcom/transsion/ardrawlines/rotate/MyOrientation;

    .line 3
    invoke-static {}, Lcom/transsion/ardrawlines/rotate/MyOrientation;->$values()[Lcom/transsion/ardrawlines/rotate/MyOrientation;

    move-result-object v0

    sput-object v0, Lcom/transsion/ardrawlines/rotate/MyOrientation;->$VALUES:[Lcom/transsion/ardrawlines/rotate/MyOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/ardrawlines/rotate/MyOrientation;
    .locals 1

    .line 3
    const-class v0, Lcom/transsion/ardrawlines/rotate/MyOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/ardrawlines/rotate/MyOrientation;

    return-object p0
.end method

.method public static values()[Lcom/transsion/ardrawlines/rotate/MyOrientation;
    .locals 1

    .line 3
    sget-object v0, Lcom/transsion/ardrawlines/rotate/MyOrientation;->$VALUES:[Lcom/transsion/ardrawlines/rotate/MyOrientation;

    invoke-virtual {v0}, [Lcom/transsion/ardrawlines/rotate/MyOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/ardrawlines/rotate/MyOrientation;

    return-object v0
.end method
