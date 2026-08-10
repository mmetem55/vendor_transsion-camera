.class final enum Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;
.super Ljava/lang/Enum;
.source "ScrollDirectionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ScrollDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;

.field public static final enum END:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;

.field public static final enum START:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 32
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;->START:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;

    const-string v3, "END"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;->END:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 31
    sput-object v3, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;->$VALUES:[Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;
    .locals 1

    .line 31
    const-class v0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;
    .locals 1

    .line 31
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;->$VALUES:[Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;

    return-object v0
.end method
