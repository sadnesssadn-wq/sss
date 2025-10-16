.class public final Lc/d/a/b/q/f/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lc/d/a/b/i/n/v;

.field public final synthetic e:Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;ILc/d/a/b/i/n/v;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/q/f/a;->e:Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;

    iput p2, p0, Lc/d/a/b/q/f/a;->c:I

    iput-object p3, p0, Lc/d/a/b/q/f/a;->d:Lc/d/a/b/i/n/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lc/d/a/b/q/f/a;->e:Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;

    invoke-static {v0}, Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;->zza(Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;)Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;

    move-result-object v0

    iget v1, p0, Lc/d/a/b/q/f/a;->c:I

    iget-object v2, p0, Lc/d/a/b/q/f/a;->d:Lc/d/a/b/i/n/v;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zza(ILc/d/a/b/i/n/v;)V

    return-void
.end method
