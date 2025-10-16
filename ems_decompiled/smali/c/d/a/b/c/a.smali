.class public final Lc/d/a/b/c/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/c/a$a;,
        Lc/d/a/b/c/a$d;,
        Lc/d/a/b/c/a$b;,
        Lc/d/a/b/c/a$c;
    }
.end annotation


# static fields
.field public static final l:Lc/d/a/b/e/m/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a$g<",
            "Lc/d/a/b/i/e/x4;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Lc/d/a/b/e/m/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a$a<",
            "Lc/d/a/b/i/e/x4;",
            "Lc/d/a/b/e/m/a$d$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Lc/d/a/b/e/m/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a<",
            "Lc/d/a/b/e/m/a$d$c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Lc/d/a/b/i/e/l4;

.field public final h:Lc/d/a/b/c/c;

.field public final i:Lc/d/a/b/e/t/a;

.field public j:Lc/d/a/b/c/a$d;

.field public final k:Lc/d/a/b/c/a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lc/d/a/b/e/m/a$g;

    invoke-direct {v0}, Lc/d/a/b/e/m/a$g;-><init>()V

    sput-object v0, Lc/d/a/b/c/a;->l:Lc/d/a/b/e/m/a$g;

    new-instance v1, Lc/d/a/b/c/b;

    invoke-direct {v1}, Lc/d/a/b/c/b;-><init>()V

    sput-object v1, Lc/d/a/b/c/a;->m:Lc/d/a/b/e/m/a$a;

    new-instance v2, Lc/d/a/b/e/m/a;

    const-string v3, "ClearcutLogger.API"

    invoke-direct {v2, v3, v1, v0}, Lc/d/a/b/e/m/a;-><init>(Ljava/lang/String;Lc/d/a/b/e/m/a$a;Lc/d/a/b/e/m/a$g;)V

    sput-object v2, Lc/d/a/b/c/a;->n:Lc/d/a/b/e/m/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance p3, Lc/d/a/b/i/e/n2;

    invoke-direct {p3, p1}, Lc/d/a/b/i/e/n2;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v0, Lc/d/a/b/e/t/b;->a:Lc/d/a/b/e/t/b;

    new-instance v1, Lc/d/a/b/i/e/c5;

    invoke-direct {v1, p1}, Lc/d/a/b/i/e/c5;-><init>(Landroid/content/Context;)V

    .line 3
    sget-object v2, Lc/d/a/b/i/e/l4;->d:Lc/d/a/b/i/e/l4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, -0x1

    iput v3, p0, Lc/d/a/b/c/a;->e:I

    iput-object v2, p0, Lc/d/a/b/c/a;->g:Lc/d/a/b/i/e/l4;

    iput-object p1, p0, Lc/d/a/b/c/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc/d/a/b/c/a;->b:Ljava/lang/String;

    const/4 v4, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget v4, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v5, "ClearcutLogger"

    const-string v6, "This can\'t happen."

    invoke-static {v5, v6, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    :goto_0
    iput v4, p0, Lc/d/a/b/c/a;->c:I

    iput v3, p0, Lc/d/a/b/c/a;->e:I

    iput-object p2, p0, Lc/d/a/b/c/a;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lc/d/a/b/c/a;->f:Ljava/lang/String;

    iput-object p3, p0, Lc/d/a/b/c/a;->h:Lc/d/a/b/c/c;

    iput-object v0, p0, Lc/d/a/b/c/a;->i:Lc/d/a/b/e/t/a;

    new-instance p1, Lc/d/a/b/c/a$d;

    invoke-direct {p1}, Lc/d/a/b/c/a$d;-><init>()V

    iput-object p1, p0, Lc/d/a/b/c/a;->j:Lc/d/a/b/c/a$d;

    iput-object v2, p0, Lc/d/a/b/c/a;->g:Lc/d/a/b/i/e/l4;

    iput-object v1, p0, Lc/d/a/b/c/a;->k:Lc/d/a/b/c/a$b;

    return-void
.end method
