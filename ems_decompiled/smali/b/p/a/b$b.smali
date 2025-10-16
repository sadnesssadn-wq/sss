.class public Lb/p/a/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/o/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/p/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/o/p<",
        "TD;>;"
    }
.end annotation


# instance fields
.field public final a:Lb/p/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/p/b/b<",
            "TD;>;"
        }
    .end annotation
.end field

.field public final b:Lb/p/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/p/a/a$a<",
            "TD;>;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>(Lb/p/b/b;Lb/p/a/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/p/b/b<",
            "TD;>;",
            "Lb/p/a/a$a<",
            "TD;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/p/a/b$b;->c:Z

    iput-object p1, p0, Lb/p/a/b$b;->a:Lb/p/b/b;

    iput-object p2, p0, Lb/p/a/b$b;->b:Lb/p/a/a$a;

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/p/a/b$b;->b:Lb/p/a/a$a;

    check-cast v0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$a;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Void;

    iget-object p1, v0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$a;->a:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 2
    iget v1, p1, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->f:I

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->g:Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, v0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$a;->a:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lb/p/a/b$b;->c:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/p/a/b$b;->b:Lb/p/a/a$a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
