.class public final synthetic Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->$r8$lambda$Su86Gc3cYnKAlJ73GKILzQoc3d8(Ljava/util/ArrayList;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
