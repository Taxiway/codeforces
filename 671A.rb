def dis(x1, y1, x2, y2)
  dx, dy = x1 - x2, y1 - y2
  return Math.sqrt(dx * dx + dy * dy)
end

x1, y1, x2, y2, xc, yc = readline.split(' ').collect(&:to_i)
n = readline.to_i
dp = Array.new(n + 1) {Array.new(4, 1e20)}
dp[0][0] = 0
0.upto(n - 1) do |ind|
  x, y = readline.split(' ').collect(&:to_i)
  0.upto(3) do |i|
    d1 = dis(xc, yc, x, y)
    dp[ind + 1][i] = [dp[ind + 1][i], dp[ind][i] + 2 * d1].min
    if i == 0 || i == 2
      d2 = dis(x1, y1, x, y)
      dp[ind + 1][i + 1] = [dp[ind + 1][i + 1], dp[ind][i] + d1 + d2].min
    end
    if i == 0 || i == 1
      d3 = dis(x2, y2, x, y)
      dp[ind + 1][i + 2] = [dp[ind + 1][i + 2], dp[ind][i] + d1 + d3].min
    end
  end
end
puts dp[n][1..-1].min

#include <cstdio>
#include <cmath>

double dis(double x1, double y1, double x2, double y2)
{
	double dx = x1 - x2, dy = y1 - y2;
	return sqrt(dx * dx + dy * dy);
}

double dp[100001][4];

double min(double x, double y)
{
	return x < y ? x : y;
}

int main()
{
	double x1, y1, x2 ,y2, xc, yc;
	scanf("%lf %lf %lf %lf %lf %lf", &x1, &y1, &x2, &y2, &xc, &yc);
	int n;
	scanf("%d", &n);
	for (int i = 0; i <= n; ++i) {
		for (int j = 0; j < 4; ++j) {
			dp[i][j] = 1e20;
		}
	}
	dp[0][0] = 0;
	for (int ind = 0; ind < n; ++ind) {
		double x, y;
		scanf("%lf %lf", &x, &y);
		for (int i = 0; i < 4; ++i) {
			double d1 = dis(xc, yc, x, y);
			dp[ind + 1][i] = min(dp[ind + 1][i], dp[ind][i] + 2 * d1);
			if (i == 0 || i == 2) {
				double d2 = dis(x1, y1, x, y);
				dp[ind + 1][i + 1] = min(dp[ind + 1][i + 1], dp[ind][i] + d1 + d2);
			}
			if (i == 0 || i == 1) {
				double d3 = dis(x2, y2, x, y);
				dp[ind + 1][i + 2] = min(dp[ind + 1][i + 2], dp[ind][i] + d1 + d3);
			}
		}
	}
	printf("%.12lf\n", min(min(dp[n][1], dp[n][2]), dp[n][3]));
	return 0;
}
