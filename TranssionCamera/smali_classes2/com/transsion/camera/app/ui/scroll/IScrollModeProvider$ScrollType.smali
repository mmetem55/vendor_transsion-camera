.class public final enum Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;
.super Ljava/lang/Enum;
.source "IScrollModeProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

.field public static final enum BOTTOM_UP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

.field public static final enum LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

.field public static final enum TOP_DOWN:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 5
    new-instance v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    const-string v1, "TOP_DOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->TOP_DOWN:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    .line 6
    new-instance v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    const-string v3, "BOTTOM_UP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_UP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    .line 7
    new-instance v3, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    const-string v5, "LEFT_RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->$VALUES:[Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;
    .locals 1

    .line 4
    const-class v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;
    .locals 1

    .line 4
    sget-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->$VALUES:[Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    return-object v0
.end method
