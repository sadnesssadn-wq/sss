.class public Lc/d/a/b/e/m/d$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/e/m/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final c:Lc/d/a/b/e/m/d$a;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field


# instance fields
.field public final a:Lc/d/a/b/e/m/m/a;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public final b:Landroid/os/Looper;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lc/d/a/b/e/m/m/a;

    invoke-direct {v0}, Lc/d/a/b/e/m/m/a;-><init>()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lc/d/a/b/e/m/d$a;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Lc/d/a/b/e/m/d$a;-><init>(Lc/d/a/b/e/m/m/a;Landroid/accounts/Account;Landroid/os/Looper;)V

    .line 2
    sput-object v2, Lc/d/a/b/e/m/d$a;->c:Lc/d/a/b/e/m/d$a;

    return-void
.end method

.method public constructor <init>(Lc/d/a/b/e/m/m/a;Landroid/accounts/Account;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/e/m/d$a;->a:Lc/d/a/b/e/m/m/a;

    iput-object p3, p0, Lc/d/a/b/e/m/d$a;->b:Landroid/os/Looper;

    return-void
.end method
